import 'package:flutter/material.dart';
import 'package:portfolio/data/person_data.dart';
import 'package:portfolio/screens/widgets/visiting_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),

          //* ListTile Concept
          // child: ListView.builder(
          //   itemCount: personData.length,
          //   itemBuilder: (context, index) {
          //     return ListTile(
          //       leading: Container(
          //         color: Colors.red,
          //         width: 40,
          //       ),
          //       title: Container(
          //         color: Colors.blue,
          //         width: 20,
          //         height: 20,
          //       ),
          //       subtitle: Container(
          //         color: Colors.green,
          //         width: 20,
          //         height: 20,
          //       ),
          //       trailing: Container(
          //         color: Colors.yellow,
          //         width: 40,
          //       ),
          //     );

          //   },
          // ),

          //* Show Visiting Cards Using Spreader and mapping
          // child: SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       ...personData.map(
          //         (eachPerson) => VisitingCard(person: eachPerson),
          //       ),
          //     ],
          //   ),
          // ),
          //* Show Visiting card using ListView Builder
          child: ListView.builder(
            itemCount: personData.length,
            itemBuilder: (context, index) {
              return VisitingCard(person: personData[index]);
            },
          ),
        ),
      ),
    );
  }
}
