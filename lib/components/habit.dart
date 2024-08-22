import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:habit_tracking/util.dart';

class Habit extends StatefulWidget {
  const Habit({super.key, required this.name});

  final String name;

  @override
  State<Habit> createState() => _HabitState();
}

class _HabitState extends State<Habit> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                borderRadius: BorderRadius.circular(8.0),
                onPressed: (context) {},
                icon: Icons.check,
              )
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFCFD8DC),
                borderRadius: BorderRadius.circular(8.0)),
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    widget.name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Text("DO IT!")
              ],
            ),
          ),
        ),
        addVerticalGap()
      ],
    );
  }
}
