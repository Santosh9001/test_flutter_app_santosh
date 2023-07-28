import 'package:demo_app/components/chat_header.dart';
import 'package:demo_app/components/chat_item.dart';
import 'package:demo_app/components/profile_image_component.dart';
import 'package:demo_app/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants.dart';

class ChatUnitWidget extends StatefulWidget {
  const ChatUnitWidget({super.key});

  @override
  State<ChatUnitWidget> createState() => _ChatUnitWidgetState();
}

class _ChatUnitWidgetState extends State<ChatUnitWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2.0),
      padding: const EdgeInsets.symmetric(
          horizontal: Constants.defaultPadding,
          vertical: Constants.defaultPadding),
      color: Colors.white,
      width: double.infinity,
      child: const Column(
        children: [
          ChatHeaderWidget(
            check: true,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(35, Constants.defaultPadding,
                Constants.defaultPadding, Constants.defaultPadding),
            child: Column(
              children: [
                Text(Utils.description),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child:
                      ChatItemWidget(fav: true, comment: true, bookmark: false),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Constants.defaultPadding),
                  child: Column(
                    children: [
                      ChatHeaderWidget(check: false),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            35,
                            Constants.defaultPadding,
                            Constants.defaultPadding,
                            Constants.defaultPadding),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(Utils.shortDesc)),
                            ChatItemWidget(
                                fav: true, comment: false, bookmark: false),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
