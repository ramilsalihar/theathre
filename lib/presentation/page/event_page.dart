import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:theatre/presentation/widgets/layout/club_scroll.dart';
import 'package:theatre/presentation/widgets/layout/event_scroll.dart';

@RoutePage()
class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.cardColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              "Events",
              style: theme.textTheme.displayLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            EventScroll(events: []),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Clubs",
              style: theme.textTheme.displayLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            ClubScroll(events: [])
          ],
        ),
      ),
    );
  }
}
