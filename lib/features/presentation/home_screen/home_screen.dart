import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:malina_shop/core/routes/router.dart';
import 'package:malina_shop/features/presentation/home_screen/widgets/custom_search_container.dart';
import 'package:malina_shop/features/presentation/home_screen/widgets/custom_stack.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 250, 251),
        body: Center(
            child: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                CustomSearchContainer(),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(ScanQrRoute());
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 247, 32, 85),
                    ),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Image.asset('assets/images/phone_vector.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Сканируй QR-код и заказывай\nпрямо в заведении',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomStack(
                    assetImage: 'assets/images/vareniki.png',
                    title: "Еда",
                    subtitle: "Из кафе и \nресторанов"),
                SizedBox(
                  height: 20,
                ),
                CustomStack(
                    backColor: true,
                    assetImage: 'assets/images/beauty.png',
                    title: "Бьюти",
                    subtitle: "Салоны красоты\nи товары"),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Скоро в Malina',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 212, 229, 255),
                        ),
                        width: 90,
                        height: 90,
                        child: Center(
                            child: Text(
                          'Вакансии',
                          style: TextStyle(fontSize: 12),
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 255, 211, 186),
                        ),
                        width: 90,
                        height: 90,
                        child: Center(
                            child:
                                Text('Маркет', style: TextStyle(fontSize: 12))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 255, 222, 222),
                        ),
                        width: 90,
                        height: 90,
                        child: Center(
                            child:
                                Text('Цветы', style: TextStyle(fontSize: 12))),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(255, 243, 177, 35),
                        ),
                        width: 90,
                        height: 90,
                        child: Center(
                            child: Text(' Возьмите меня\n на работу',
                                style: TextStyle(fontSize: 12))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
