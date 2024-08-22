import 'package:flutter/material.dart';
import 'package:habit_tracking/util.dart';

class Quote extends StatefulWidget {
  const Quote({super.key});

  @override
  State<Quote> createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "“Courage isn't the absence of fear, but an urgent impulse to do something despite fear.”",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        addVerticalGap(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text("Grant Cardone"),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.blueGrey[100]),
              padding: EdgeInsets.all(8.0),
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              ],
            )
          ],
        )
      ],
    );
  }
}
