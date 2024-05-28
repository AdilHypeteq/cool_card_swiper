import 'package:cool_card_swiper/cool_card_swiper.dart';
import 'package:example/card_content.dart';
import 'package:example/models.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 180),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 200,
                width: deviceWidth < 398 ? 345 : 400,
                alignment: Alignment.topCenter,
                child: CoolSwiper(
                  initAnimationOffset: 20,
                  children: List.generate(getCardList().length,
                        (index) => CardContent(
                      cardItem: getCardList()[index],
                      deviceWidth: deviceWidth,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
