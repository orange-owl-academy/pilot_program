// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/models/person.dart';
import 'package:portfolio/screens/widgets/contact_row.dart';

class VisitingCard extends StatelessWidget {
  const VisitingCard({
    super.key,
    required this.person,
  });

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      semanticContainer: true,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Color(0xFFE8E8E8),

          // border: Border.all(),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(person.imagePath),
                  radius: 40,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      ContactRow(data: person.address, icon: Icons.location_on),
                      ContactRow(data: person.phone, icon: Icons.call),
                      ContactRow(data: person.email, icon: Icons.email),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            Text(
              person.name,
              style: GoogleFonts.dancingScript(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              person.designation,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
