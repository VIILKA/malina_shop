import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:malina_shop/core/routes/router.dart';
import 'package:malina_shop/features/presentation/widgets/bottom_nav_bar/custom_nav_bar.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        FavouritesRoute(),
        ProfileRoute(),
        ShoppingCartFoodRoute(),
        ShoppingCartCosmeticRoute()
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: CustomNavBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              }),
        );
      },
    );
  }
}
