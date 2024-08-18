import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habit_tracking/styles.dart';

class HabitTrackingForm extends StatefulWidget {
  const HabitTrackingForm({super.key});

  @override
  State<HabitTrackingForm> createState() => _HabitTrackingFormState();
}

class _HabitTrackingFormState extends State<HabitTrackingForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.grey[50], borderRadius: BorderRadius.circular(16.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date Picker
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(16.0)),
            child: const Text("4 July 2024"),
          ),

          // gap
          const SizedBox(
            height: 10.0,
          ),

          // List the habits
          Container(
            decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(16.0)),
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Coding",
                  style: HTStyles.getBodyNormalFont(),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.done))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
