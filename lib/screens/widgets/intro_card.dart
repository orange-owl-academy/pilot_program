// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/widgets/contact_row.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.name,
    required this.designation,
    required this.location,
    required this.phone,
    required this.email,
  });

  final String name;
  final String designation;
  final String location;
  final String phone;
  final String email;

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
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
                  radius: 40,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      ContactRow(data: location, icon: Icons.location_on),
                      ContactRow(data: phone, icon: Icons.call),
                      ContactRow(data: email, icon: Icons.email),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            Text(
              name,
              style: GoogleFonts.dancingScript(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              designation,
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
