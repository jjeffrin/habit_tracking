import 'package:flutter/material.dart';
import 'package:habit_tracking/styles.dart';
import 'package:lottie/lottie.dart';

class Streak extends StatelessWidget {
  const Streak({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.grey[50], borderRadius: BorderRadius.circular(16.0)),
      child: Column(
        children: [
          Lottie.network(
              'https://lottie.host/2755366f-aab4-4921-a93d-05f4de0beac4/K0cIJe7mP1.json'),
          const SizedBox(
            height: 10.0,
          ),
          Text("You are on a 21 day streak 🔥",
              style: HTStyles.getBodyNormalFont()),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.purple[50]),
            padding: const EdgeInsets.all(8.0),
            child: Text("Reading | Meditation | Coding | Gym",
                style: HTStyles.getBodyNormalFont()),
          )
        ],
      ),
    );
  }
}
