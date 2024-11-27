import 'package:flutter/material.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({
    super.key,
    required this.data,
    required this.icon,
  });

  final String data;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            data,
            textAlign: TextAlign.end,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        const SizedBox(width: 5),
        Icon(icon),
      ],
    );
  }
}
