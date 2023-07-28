import 'package:flutter/material.dart';

class OvalContainer extends StatefulWidget {
  const OvalContainer({super.key});

  @override
  State<OvalContainer> createState() => _OvalContainerState();
}

class _OvalContainerState extends State<OvalContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.green[600]),
      child: const Text(
        "자유톡 자유톡",
        style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
      ),
    );
  }
}
