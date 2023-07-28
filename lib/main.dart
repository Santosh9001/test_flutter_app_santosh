import 'package:demo_app/components/carousel_component.dart';
import 'package:demo_app/components/chat_message_entry.dart';
import 'package:demo_app/components/chat_unit.dart';
import 'package:demo_app/components/chips_list.dart';
import 'package:demo_app/components/detail_component_header.dart';
import 'package:demo_app/constants.dart';
import 'package:demo_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: '자유톡'),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: Constants.defaultPadding),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.grey,
            ),
          )
        ],
        title: Align(
            alignment: Alignment.center,
            child: Text(
              widget.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
      body: Column(
        children: [
          const DetailComponentHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: Constants.defaultPadding,
                        vertical: Constants.defaultPadding),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: Constants.defaultPadding,
                        vertical: Constants.defaultPadding),
                    child: const Wrap(
                      children: [
                        Text(
                          Utils.description,
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: Constants.defaultPadding,
                        vertical: Constants.defaultPadding),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: ChipsWidget(),
                    ),
                  ),
                  const CarouselComponent(),
                  const ChatUnitWidget(),
                ],
              ),
            ),
          ),
          const ChatMessageEntryWidget(),
        ],
      ),
    );
  }
}
