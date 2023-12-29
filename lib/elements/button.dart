import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final Icon iconName;
  final String mode;
const Button({super.key, required this.mode, required this.iconName});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {

  late Color color = Color.fromRGBO(125, 125, 125, 0.4);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          child: InkWell(
            onTap: () {
              setState(() {
                color = Colors.green;
              });
            },

            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: widget.iconName,
            ),
          ),
        ),
        Text(
          widget.mode,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
        )
      ],
    );
  }
}
