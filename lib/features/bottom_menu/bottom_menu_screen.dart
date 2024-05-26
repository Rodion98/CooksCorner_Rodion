import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/assets.gen.dart';

@RoutePage()
class BottomMenuScreen extends StatefulWidget {
  const BottomMenuScreen({super.key});

  @override
  State<BottomMenuScreen> createState() => _BottomMenuScreenState();
}

class _BottomMenuScreenState extends State<BottomMenuScreen> {
  final List<PageRouteInfo<void>> _buildRoutes = const [
    HomeRoute(),
    SearchRoute(),
    ProfileRoute(),
  ];

  List<Widget> _navBarsItems({
    required int activeIndex,
    required Function(int index) onSelectedItem,
  }) {
    return [
      _buildNavItem(
        item: BottomMenuItem(index: 0, assetName: [
          Assets.icons.cottageOn,
          Assets.icons.cottage,
        ]),
        isActive: activeIndex == 0,
        onSelectedItem: onSelectedItem,
      ),
      _buildNavItem(
        item: BottomMenuItem(index: 1, assetName: [
          Assets.icons.search,
          Assets.icons.searchOn2,
        ]),
        isActive: activeIndex == 1,
        onSelectedItem: onSelectedItem,
      ),
      _buildNavItem(
        item: BottomMenuItem(index: 2, assetName: [
          Assets.icons.accountCircle,
          Assets.icons.accountCircleOn,
        ]),
        isActive: activeIndex == 2,
        onSelectedItem: onSelectedItem,
      ),
    ];
  }

  Widget _buildNavItem({
    bool isActive = true,
    required BottomMenuItem item,
    required Function(int index) onSelectedItem,
  }) {
    return GestureDetector(
      onTap: () {
        onSelectedItem(item.index);
        print(item.index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppProps.kPageMargin,
            ),
            child: SizedBox(
              width: 20,
              height: 20,
              child: isActive
                  ? SvgPicture.asset(
                      item.assetName[1],
                    )
                  : SvgPicture.asset(
                      item.assetName[0],
                    ),
            ),
          ),
        ],
      ),
    ).withOpaqueBehavior();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _buildRoutes,
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 29.1,
                spreadRadius: 7,
                color: Colors.black.withOpacity(0.25),
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: SizedBox(
            height: 60,
            child: Row(
              children: _navBarsItems(
                activeIndex: tabsRouter.activeIndex,
                onSelectedItem: tabsRouter.setActiveIndex,
              ).map((e) => Expanded(child: e)).toList(),
            ),
          ),
        );
      },
    );
  }
}

class BottomMenuItem {
  List<String> assetName;
  int index;

  BottomMenuItem({
    required this.assetName,
    required this.index,
  });
}
