import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/education.dart';
import 'package:portfolio/screens/widgets/intro_card.dart';
import 'package:portfolio/screens/widgets/section_heading.dart';
import 'package:portfolio/screens/widgets/skill.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE0E0E0),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: double.infinity),
                IntroWidget(
                  name: "Mosiur Rahman Sweet",
                  designation: "Flutter Developer",
                  location: "Rajshahi, Bangladesh",
                  phone: "+8801521473707",
                  email: "ak30may@gmail.com",
                ),
                SizedBox(height: 15),
                SectionHeading(sectionName: "PROFESSIONAL STATEMENT"),
                SizedBox(height: 10),
                Text(
                  'I am a dedicated Flutter developer with hands-on experience in designing and delivering robust, high-performing mobile applications. My expertise lies in creating user-centric solutions that prioritize efficiency, seamless functionality, and exceptional user experiences.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 15),
                SectionHeading(sectionName: "SKILLS"),
                SizedBox(height: 10),
                Wrap(
                  spacing: 10, //* horizontal spacing
                  runSpacing: 10, //* vertical spacing
                  alignment: WrapAlignment.center,
                  children: [
                    Skill(name: "flutter"),
                    Skill(name: "dart"),
                    Skill(name: "java"),
                    Skill(name: "critical thinking"),
                    Skill(name: "communication"),
                    Skill(name: "problem solving"),
                  ],
                ),
                SizedBox(height: 15),
                SectionHeading(sectionName: "EDUCATION"),
                SizedBox(height: 10),
                Education(
                  degree: "BSc in CSE",
                  grade: "GPA * out of 4",
                  year: 2020,
                  alignment: CrossAxisAlignment.start,
                  institute: "Varendra University",
                ),
                Education(
                  degree: "HSC (Science)",
                  grade: "GPA * out of 4",
                  year: 2016,
                  alignment: CrossAxisAlignment.end,
                  institute: "XYZ College",
                ),
                Education(
                  degree: "SSC (Science)",
                  grade: "GPA * out of 4",
                  year: 2014,
                  alignment: CrossAxisAlignment.start,
                  institute: "ABC School",
                ),
                Divider(),
                Text("© Orange Owl 2024"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//* DRY PRINCIPLE: DON'T REPEAT YOURSELF


