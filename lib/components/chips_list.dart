import 'package:demo_app/constants.dart';
import 'package:demo_app/utils.dart';
import 'package:flutter/material.dart';

class ChipsWidget extends StatelessWidget {
  const ChipsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 4.0,
        children: Utils.chips
            .map(
              (item) => Container(
                margin: const EdgeInsets.only(bottom: Constants.size5),
                padding: const EdgeInsets.symmetric(
                    horizontal: Constants.size15, vertical: Constants.size5),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                      color: const Color.fromARGB(255, 203, 203, 203)),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  item,
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
            )
            .toList());
  }
}
