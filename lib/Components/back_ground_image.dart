import 'package:flutter/material.dart';

class BackGroundImage extends StatelessWidget {
  BackGroundImage({this.location, this.child});
  final String location;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(location),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
