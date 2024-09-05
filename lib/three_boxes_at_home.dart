import 'package:flutter/material.dart';

class top_home_container extends StatefulWidget {
  final Widget child;

  const top_home_container({super.key, required this.child});

  @override
  State<top_home_container> createState() => _top_home_containerState();
}

class _top_home_containerState extends State<top_home_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 90,
      width: 90,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(.05, .05),
            blurRadius: .5,
            spreadRadius: .05),
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: widget.child,
    );
  }
}
