import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:theatre/core/constants/data.dart';
import 'package:theatre/presentation/widgets/layout/club_scroll.dart';
import 'package:theatre/presentation/widgets/layout/event_scroll.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeMoviePage();
}

class _HomeMoviePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Naryn Theatre',
            style: theme.textTheme.displayLarge!.copyWith(
              color: Colors.white,
            )),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: () {
              context.router.pushNamed('/login');
            },
          ),
        ],
      ),
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
            EventScroll(events: events),
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
            ClubScroll(clubs: clubs)
          ],
        ),
      ),
    );
  }
}
