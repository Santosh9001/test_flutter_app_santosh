import 'package:flutter/material.dart';

class ChatItemWidget extends StatefulWidget {
  final bool fav;
  final bool comment;
  final bool bookmark;
  const ChatItemWidget(
      {super.key,
      required this.fav,
      required this.comment,
      required this.bookmark});

  @override
  State<ChatItemWidget> createState() => _ChatItemWidgetState();
}

class _ChatItemWidgetState extends State<ChatItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        widget.fav
            ? Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[400],
                  ),
                  const Text(
                    "5",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            : Container(),
        const SizedBox(
          width: 10.0,
        ),
        widget.comment
            ? Row(
                children: [
                  Image.asset(
                    "assets/images/ic_chat.png",
                    color: Colors.grey[400],
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    "5",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            : Container(),
        const SizedBox(
          width: 10.0,
        ),
        widget.bookmark
            ? Row(
                children: [
                  Icon(
                    Icons.bookmark_outline_rounded,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[400],
                  ),
                ],
              )
            : Container()
      ],
    );
  }
}
