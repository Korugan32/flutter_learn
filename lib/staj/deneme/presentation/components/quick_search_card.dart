import 'package:flutter/material.dart';
import 'package:flutter_learn/staj/deneme/util/color_utility.dart';

class QuickSearchCard extends StatelessWidget {
  const QuickSearchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 120,
      child: Card(
        color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.4),
        child: InkWell(
          onTap: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.bedroom_child_outlined, color: ColorUtility.blueSky),
              Text("Hotel"),
            ],
          ),
        ),
      ),
    );
  }
}