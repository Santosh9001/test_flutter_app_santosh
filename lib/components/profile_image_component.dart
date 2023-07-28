import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_app/utils.dart';
import 'package:flutter/material.dart';

class ProfileImageComponent extends StatefulWidget {
  const ProfileImageComponent({super.key});

  @override
  State<ProfileImageComponent> createState() => _ProfileImageComponentState();
}

class _ProfileImageComponentState extends State<ProfileImageComponent> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      foregroundImage: CachedNetworkImageProvider(
        Utils.imgUrl,
        errorListener: () {
          const AssetImage("assets/images/ic_profile.png");
        },
      ),
    );
  }
}
