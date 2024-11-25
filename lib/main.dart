import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: double.infinity),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child:  Column(
                      children: [
                        // Image.asset('assets/images/profile_picture.jpg',
                        //   width: 100,
                        //   height: 100,
                        // ),
                        Text(
                          'Almost before we knew it, we had left the ground.',
                          style: TextStyle(
                            fontFamily: 'Sour Gummy',
                            fontSize: 36.0,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'This is Google Fonts',
                          style: GoogleFonts.pacifico(
                              fontSize: 24, color: Colors.red),
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile_picture.jpg'),
                          radius: 50,
                        ),
                        Text(
                          "Mosiur Rahman Sweet",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.black,
                            ),
                            Text(
                              "Rajshahi, Bangladesh",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width: 3),
                            Text("+8801521473707"),
                            SizedBox(width: 10),
                            Icon(Icons.email),
                            SizedBox(width: 3),
                            Text(
                              "sweet.csevu@gmail.com",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  sectionHeading("PROFESSIONAL STATEMENT"),
                  const SizedBox(height: 10),
                  const Text(
                    'I am a dedicated Flutter developer with hands-on experience in designing and delivering robust, high-performing mobile applications. My expertise lies in creating user-centric solutions that prioritize efficiency, seamless functionality, and exceptional user experiences.',
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 15),
                  sectionHeading("SKILLS"),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 10, //* horizontal spacing
                    runSpacing: 10, //* vertical spacing
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      skill("flutter"),
                      skill("java"),
                      skill("firebase"),
                      skill("supabase"),
                      skill("state management"),
                      skill("clean architecture"),
                    ],
                  ),
                  const SizedBox(height: 15),
                  sectionHeading("EDUCATION"),
                  const SizedBox(height: 10),
                  education(
                    "BSc in CSE",
                    2020,
                    "Varendra University",
                    "GPA * out of 4",
                    CrossAxisAlignment.start,
                  ),
                  education(
                    "HSC (Science)",
                    2016,
                    "XYZ College",
                    "GPA * out of 5",
                    CrossAxisAlignment.end,
                  ),
                  education(
                    "SSC (Science)",
                    2014,
                    "Varendra University",
                    "GPA * out of 4",
                    CrossAxisAlignment.start,
                  ),
                  const Divider(),
                  const Text("© Orange Owl 2024"),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox education(String degree, int year, String institute, String grade,
      CrossAxisAlignment alignment) {
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

  Container sectionHeading(String text) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
      ),
    );
  }

  Container skill(String name) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        name,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
