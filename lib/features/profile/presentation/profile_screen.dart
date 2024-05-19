import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/auth_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/bloc/authorization_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/bloc/home_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/widgets/build_grid_view.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/manage_profile/presentation/widgets/resend_email_widget.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: Constants.tabsProfile.length,
      vsync: this,
    );
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        context.read<HomeBloc>().add(
              Load(index: tabController.index),
            );
      }
    });
    context.read<HomeBloc>().add(Load(index: 0));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: AnnotatedRegion(
          value: const SystemUiOverlayStyle(
            statusBarColor: AppColors.white,
            // statusBarIconBrightness: Brightness.dark,
          ),
          child: NestedScrollView(
            physics: NeverScrollableScrollPhysics(),
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.only(top: 27, left: 20, right: 20),
                  sliver: SliverToBoxAdapter(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 44,
                            backgroundImage: NetworkImage(
                              'https://robohash.org/bf2e27b0d015d07a3540a337f224d856?set=set4&bgset=&size=400x400',
                            ),
                          ),
                          SizedBox(width: 28),
                          _buildAccountInfo(t.Recipe, 29),
                          SizedBox(width: 17),
                          _buildAccountInfo(t.Followers, 144),
                          SizedBox(width: 17),
                          _buildAccountInfo(t.Following, 100)
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Sarthak Ranjan Hota',
                        style: AppTextStyle.poppins16.copyWith(color: AppColors.black, height: 1.75),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Im a passionate chef who loves creating delicious dishes with flair.',
                        style: AppTextStyle.poppins12.copyWith(
                          height: 1.41,
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(AppColors.primarySecondary),
                          minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 44)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          AutoRouter.of(context).push(
                            const ManageProfileRoute(),
                          );
                        },
                        child: Text(
                          t.ManageProfile,
                          style: AppTextStyle.poppins14.copyWith(
                            color: AppColors.primary,
                            height: 1.21,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          final stateModel = state.stateModel;
                          return _buildTabBar(Constants.tabsProfile, stateModel.index);
                        },
                      ),
                    ]),
                  ),
                ),
              ];
            },
            body: Expanded(
              child: TabBarView(controller: tabController, children: [
                BuilGridView(),
                BuilGridView(),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 14,
          ),
          child: Center(
              child: Text(
            t.Profile,
            style: AppTextStyle.poppinsProfile22,
          )),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(
                right: 20,
                top: 14,
              ),
              child: IconButton(
                  onPressed: () {
                    _buildShowDialog(context);
                  },
                  icon: Icon(Icons.logout)))
        ]);
  }

  Future<String?> _buildShowDialog(
    BuildContext context,
  ) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        content: Text(
          textAlign: TextAlign.center,
          t.wannaLeave,
          style: AppTextStyle.poppinsProfile22.copyWith(
            height: 1.5,
            color: AppColors.black,
          ),
        ),
        actions: <Widget>[
          ShowModalButtons(
            onTap: () {
              context.read<AuthorizationBloc>().add(
                    const AuthorizationEvent.signOut(),
                  );
              AutoRouter.of(context).push(
                const AuthorizationRoute(),
              );
            },
            color: AppColors.primarySecondary,
            textColor: AppColors.black,
            text: t.Yes,
          ),
          ShowModalButtons(
            onTap: () {
              Navigator.pop(context);
            },
            color: AppColors.primary,
            textColor: AppColors.white,
            text: t.No,
          )
        ],
        actionsAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }

  TabBar _buildTabBar(List<Tab> category, int selectedIndex) {
    return TabBar(
      controller: tabController,
      onTap: (index) {
        context.read<HomeBloc>().add(Load(index: index));
      },
      tabAlignment: TabAlignment.fill,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      dividerColor: Colors.white,
      unselectedLabelStyle: AppTextStyle.poppins16.copyWith(
        color: AppColors.textFaded,
        height: 1.75,
      ),
      labelStyle: AppTextStyle.poppins16.copyWith(
        height: 1.75,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      indicator: UnderlineTabIndicator(
        insets: EdgeInsets.symmetric(horizontal: 16),
        borderSide: BorderSide(
          width: 1.5,
          color: AppColors.white,
        ),
      ),
      indicatorColor: AppColors.black,
      tabs: category,
    );
  }

  Column _buildAccountInfo(String text, int number) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: AppTextStyle.poppinsProfile20,
        ),
        Text(
          text,
          style: AppTextStyle.poppins14.copyWith(color: AppColors.textFaded),
        ),
      ],
    );
  }
}
