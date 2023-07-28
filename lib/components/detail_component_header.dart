import 'package:demo_app/components/container_oval.dart';
import 'package:demo_app/components/profile_image_component.dart';
import 'package:demo_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailComponentHeader extends StatefulWidget {
  const DetailComponentHeader({super.key});

  @override
  State<DetailComponentHeader> createState() => _DetailComponentHeaderState();
}

class _DetailComponentHeaderState extends State<DetailComponentHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      color: Colors.white,
      width: double.infinity,
      child: Row(
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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      size: 15,
                      Icons.check_circle,
                      color: Colors.green[700],
                    ),
                    Text(
                      "자유톡",
                      style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                    )
                  ],
                ),
                Text(
                  "165cm - 53kg",
                  style: TextStyle(color: Colors.grey[400]),
                )
              ],
            ),
          ),
          const OvalContainer()
        ],
      ),
    );
  }
}
