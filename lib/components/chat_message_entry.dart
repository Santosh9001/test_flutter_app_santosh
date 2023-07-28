import 'package:demo_app/constants.dart';
import 'package:flutter/material.dart';

class ChatMessageEntryWidget extends StatefulWidget {
  const ChatMessageEntryWidget({super.key});

  @override
  State<ChatMessageEntryWidget> createState() => _ChatMessageEntryWidgetState();
}

class _ChatMessageEntryWidgetState extends State<ChatMessageEntryWidget> {
  final TextEditingController _msgController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 1),
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: Constants.defaultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.image,
            color: Colors.grey[400],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: _msgController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "댓글을 남겨주세요.",
                    hintStyle: TextStyle(color: Colors.grey[300])),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("message tapped");
            },
            child: Text(
              "등록",
              style: TextStyle(color: Colors.grey[400], fontSize: 18.0),
            ),
          )
        ],
      ),
    );
  }
}
