import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:malina_shop/features/presentation/shopping_cart_screen/widgets/horizontal_line.dart';

class ItemCard extends StatelessWidget {
  final String place;
  final String title;
  final String subtitle;
  final String assetImage;
  final String price;
  final String totalPrice;
  final bool food;

  const ItemCard(
      {Key? key,
      required this.assetImage,
      required this.title,
      required this.subtitle,
      this.food = true,
      required this.place,
      required this.price,
      required this.totalPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  place,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 95, 95, 95),
                      fontSize: 16),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: const Color.fromARGB(255, 150, 113, 113),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            HorizontalLine(
              color: Color.fromARGB(255, 237, 235, 235),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 110,
                    height: 110,
                    child: Image.asset(
                      assetImage,
                    )),
                SizedBox(
                  width: 13,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(price,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500))
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 97, 97, 97)),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: const Color.fromARGB(
                                        255, 240, 240, 240)),
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: const Color.fromARGB(
                                        255, 240, 240, 240)),
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                          Icon(Icons.delete)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            food
                ? Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: const Color.fromARGB(255, 240, 240, 240),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                          color: Colors.green,
                          size: 30,
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Добавки',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )
                : SizedBox.shrink(),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(255, 247, 32, 85),
              ),
              height: MediaQuery.of(context).size.height * 0.065,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Text(
                    'Заказать',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    totalPrice,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromARGB(34, 0, 0, 0),
          blurRadius: 15,
          spreadRadius: 1,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(12)),
    );
  }
}
