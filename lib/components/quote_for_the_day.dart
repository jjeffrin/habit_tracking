import 'package:flutter/material.dart';
import 'package:habit_tracking/styles.dart';

class QuoteForTheDay extends StatefulWidget {
  const QuoteForTheDay({super.key});

  @override
  State<QuoteForTheDay> createState() => _QuoteForTheDayState();
}

class _QuoteForTheDayState extends State<QuoteForTheDay>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    // _controller.animateTo(0.2);
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Some of us think holding on makes us strong, but sometimes it is letting go.',
          style: HTStyles.getBodyTitleFont(),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(16.0)),
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Hermann Hesse',
                style: HTStyles.getBodySmallFont(),
              ),
            ),
            // GestureDetector(
            //     onTap: () {
            //       _controller.forward();
            //     },
            //     child: Lottie.network(
            //       'https://lottie.host/55e6fe39-e823-4e88-83a1-d93013f6f323/mkyemDwoJV.json',
            //       controller: _controller,
            //       fit: BoxFit.fill,
            //       height: 100.0,
            //       width: 100.0,

            //     )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          ],
        )
      ],
    );
  }
}
