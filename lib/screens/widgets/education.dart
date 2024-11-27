import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({
    super.key,
    required this.degree,
    required this.grade,
    required this.year,
    required this.alignment,
    required this.institute,
  });
  final String degree;
  final String institute;
  final String grade;
  final int year;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          Text(
            '$degree | $year',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            institute,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            grade,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
