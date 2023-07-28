import 'package:demo_app/components/profile_image_component.dart';
import 'package:flutter/material.dart';

class ChatHeaderWidget extends StatefulWidget {
  final bool check;
  const ChatHeaderWidget({super.key, required this.check});

  @override
  State<ChatHeaderWidget> createState() => _ChatHeaderWidgetState();
}

class _ChatHeaderWidgetState extends State<ChatHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProfileImageComponent(),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "자유톡 자유톡",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  widget.check
                      ? Icon(
                          size: 15,
                          Icons.check_circle,
                          color: Colors.green[700],
                        )
                      : Container(
                          padding: const EdgeInsets.only(left: 5.0),
                        ),
                  Text(
                    "자유톡",
                    style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  )
                ],
              ),
            ],
          ),
        ),
        Icon(
          Icons.more_horiz,
          color: Colors.grey[400],
        )
      ],
    );
  }
}
