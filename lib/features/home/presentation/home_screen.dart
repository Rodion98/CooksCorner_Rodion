import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/auth_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/bloc/home_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/widgets/build_grid_view.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: Constants.tabsHome.length,
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
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: ColoredContainer(
                  t.Hi,
                  'Sarthak',
                  t.UIDesignerCook,
                  0.16,
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t.Category,
                        style: AppTextStyle.poppins18,
                      ),
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          final stateModel = state.stateModel;
                          return _buildTabBar(Constants.tabsHome, stateModel.index);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: tabController,
            children: [
              BuilGridView(),
              BuilGridView(),
              BuilGridView(),
            ],
          ),
        ),
      ),
    );
  }

  TabBar _buildTabBar(List<Tab> category, int selectedIndex) {
    return TabBar(
      controller: tabController,
      onTap: (index) {
        context.read<HomeBloc>().add(Load(index: index));
      },
      tabAlignment: TabAlignment.start,
      indicatorWeight: 0.5,
      indicatorPadding: EdgeInsets.all(10),
      labelPadding: EdgeInsets.only(right: 50),
      indicatorSize: TabBarIndicatorSize.label,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      isScrollable: true,
      dividerColor: Colors.transparent,
      unselectedLabelStyle: AppTextStyle.poppins14.copyWith(
        color: AppColors.textFaded,
        height: 1.21,
      ),
      labelStyle: AppTextStyle.poppins14.copyWith(
        height: 1.21,
        fontWeight: FontWeight.w500,
      ),
      indicator: UnderlineTabIndicator(
        insets: EdgeInsets.symmetric(horizontal: 16),
        borderSide: BorderSide(
          width: 1.5,
          color: AppColors.black,
        ),
      ),
      indicatorColor: AppColors.black,
      tabs: category,
    );
  }
}
