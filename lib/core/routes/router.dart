import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:malina_shop/features/presentation/favourites_screen/favourites_screen.dart';
import 'package:malina_shop/features/presentation/home_screen/home_screen.dart';
import 'package:malina_shop/features/presentation/profile_screen.dart/profile_screen.dart';
import 'package:malina_shop/features/presentation/scan_qr_screen/scan_qr_screen.dart';
import 'package:malina_shop/features/presentation/shopping_cart_screen/shopping_cart_cosmetic_screen.dart';
import 'package:malina_shop/features/presentation/shopping_cart_screen/shopping_cart_food_screen.dart';
import 'package:malina_shop/features/presentation/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:malina_shop/splash_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: DashboardRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: FavouritesRoute.page),
            AutoRoute(page: ShoppingCartFoodRoute.page),
            AutoRoute(page: ShoppingCartCosmeticRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
        AutoRoute(page: ScanQrRoute.page)
      ];
}
