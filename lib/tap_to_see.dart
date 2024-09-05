import 'package:flutter/material.dart';

class tap_to_see extends StatefulWidget {
  final onPressed;
  const tap_to_see({super.key,required this.onPressed});

  @override
  State<tap_to_see> createState() => _tap_to_seeState();
}

class _tap_to_seeState extends State<tap_to_see> {
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.all(5),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.pink)),
      ),
    );
  }
}
