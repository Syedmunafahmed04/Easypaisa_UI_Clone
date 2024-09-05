import 'package:flutter/material.dart';

class more_options extends StatefulWidget {
  final Widget child;
  const more_options({super.key, required this.child});

  @override
  State<more_options> createState() => _more_optionsState();
}

class _more_optionsState extends State<more_options> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(0)),
      child: widget.child,
    );
  }
}
