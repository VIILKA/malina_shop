import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:malina_shop/core/routes/router.dart';
import 'package:malina_shop/features/presentation/shopping_cart_screen/widgets/item_card.dart';

@RoutePage()
class ShoppingCartCosmeticPage extends StatefulWidget {
  const ShoppingCartCosmeticPage({super.key});

  @override
  State<ShoppingCartCosmeticPage> createState() =>
      _ShoppingCartCosmeticPageState();
}

class _ShoppingCartCosmeticPageState extends State<ShoppingCartCosmeticPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                AutoRouter.of(context).push(HomeRoute());
              },
              icon: Icon(Icons.arrow_back_ios_new)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Корзина',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Text(
                'Очистить',
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                ItemCard(
                    food: false,
                    assetImage: 'assets/images/hadat_cream.png',
                    title: 'Hadat Cosmetics',
                    subtitle: 'Увлажняющий кондиционер\n150 мл',
                    place: 'Hair',
                    price: '2000 С',
                    totalPrice: '2000 C'),
                SizedBox(
                  height: 20,
                ),
                ItemCard(
                    food: false,
                    assetImage: 'assets/images/shampoo.png',
                    title: 'L’Oreal Paris\nElseve',
                    subtitle: 'Шампунь для\nослабленных волос',
                    place: 'Preen Beauty',
                    price: '600 С',
                    totalPrice: '600 C'),
                SizedBox(
                  height: 20,
                ),
                ItemCard(
                    food: false,
                    assetImage: 'assets/images/hadat_cosmetic.png',
                    title: 'Hadat Cosmetics',
                    subtitle:
                        'Шампунь интенсивно\nвосстанавливающий Hydro\nIntensive Repair Shampoo 250 мл',
                    place: 'Hair',
                    price: '1900 С',
                    totalPrice: '1900 C'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
