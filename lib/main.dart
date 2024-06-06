import 'package:flutter/material.dart';
import 'package:malina_shop/core/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 247, 32, 85)),
            useMaterial3: true,
            fontFamily: "SF-Pro-Display"),
        routerConfig: _appRouter.config());
  }
}
