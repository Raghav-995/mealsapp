import 'package:flutter/material.dart';

class MealsDataTrait extends StatelessWidget {
  const MealsDataTrait({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(context) {
    return Row(children: [
      Icon(icon, size: 17, color: Colors.white),
      const SizedBox(
        height: 6,
      ),
      Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    ]);
  }
}
