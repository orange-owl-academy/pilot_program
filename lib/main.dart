import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity),
              const Text(
                "Mosiur Rahman Sweet",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  Text(
                    "Rajshahi",
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone),
                  Text("+8801521473707"),
                  SizedBox(width: 10),
                  Icon(Icons.email),
                  Text("sweet.csevu@gmail.com"),
                ],
              ),
              const Divider(),
              const Text(
                "PROFESSIONAL STATEMENT",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                  wordSpacing: 5,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'I am a dedicated Flutter developer with hands-on experience in designing and delivering robust, high-performing mobile applications. My expertise lies in creating user-centric solutions that prioritize efficiency, seamless functionality, and exceptional user experiences. I am seeking a challenging role where I can leverage my skills to contribute innovative solutions and elevate Flutter development standards.',
                textAlign: TextAlign.justify,
              ),
              const Divider(),
              const Text(
                "SKILLS",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                  wordSpacing: 5,
                ),
              ),
              const SizedBox(height: 5),
              Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 10,
                children: [
                  skill("flutter"),
                  const SizedBox(width: 10),
                  skill("java"),
                  const SizedBox(width: 10),
                  skill("firebase"),
                  const SizedBox(width: 10),
                  skill("supabase"),
                  const SizedBox(width: 10),
                  skill("state management"),
                  const SizedBox(width: 10),
                  skill("clean architecture"),
                ],
              ),
              const Divider(),
              const Spacer(),
              const Text("© Orange Owl - 2024"),
              const SizedBox(height: 10),
            ],
          ),
        )),
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
