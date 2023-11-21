import 'package:flutter/material.dart';
import 'package:persona_arrk/constants/styles.dart';

class AdditionalButton extends StatefulWidget {
  final String iconName;

  const AdditionalButton({super.key, required this.iconName});

  @override
  State<AdditionalButton> createState() => _AdditionalButtonState();
}

class _AdditionalButtonState extends State<AdditionalButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kSmallPaddingAll,
      decoration: kCircleBoxDecoration,
      child: Image.asset('images/${widget.iconName}.png'),
    );
  }
}
