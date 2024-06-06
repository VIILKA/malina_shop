import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:malina_shop/core/routes/router.dart';
import 'package:malina_shop/features/presentation/shopping_cart_screen/widgets/item_card.dart';

@RoutePage()
class ShoppingCartFoodPage extends StatefulWidget {
  const ShoppingCartFoodPage({super.key});

  @override
  State<ShoppingCartFoodPage> createState() => _ShoppingCartFoodPageState();
}

class _ShoppingCartFoodPageState extends State<ShoppingCartFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.42,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 247, 32, 85),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Доставка',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.42,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Color.fromARGB(255, 145, 145, 145), width: 1.0),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'В заведении',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 48, 48, 48)),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ItemCard(
                assetImage: 'assets/images/pizza.png',
                title: 'Том ям',
                subtitle: 'Пицца с соусом том ям\n230 гр',
                place: 'Bellagio Coffee',
                price: '250 С',
                totalPrice: '250 C'),
          ],
        ),
      )),
    );
  }
}
