import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  final String name = "Korugan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ("Welcome1 $name"),
              maxLines: 1,
              style: ProjectTextStyles.deneme,
            ),
            Text(
              ("Welcome2 $name"),
              maxLines: 1,
              style: ProjectTextStyles.deneme2,
            ),
            Text(
              ("Welcome3 $name"),
              maxLines: 1,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              )
            ),
            Text(
              ("Welcome3 $name"),
              maxLines: 1,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: ProjectColors.textColor
              )
            ),
          ],
        ),
      ),
    );
  }
}

// TextStyle Tanimlamalari

class ProjectTextStyles extends TextStyle {
  static TextStyle deneme = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.amber,
  );

  static TextStyle deneme2 = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.red,
  );
}

// Colors

class ProjectColors {
  static Color textColor = Colors.deepOrange;
}
