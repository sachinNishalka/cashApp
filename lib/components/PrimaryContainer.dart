import "package:flutter/material.dart";

class PrimaryContainer extends StatelessWidget {
  Color? componentColor;
  Widget? componentWidgets;

  PrimaryContainer({this.componentColor, this.componentWidgets});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: componentColor),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: componentWidgets,
      ),
    );
  }
}
