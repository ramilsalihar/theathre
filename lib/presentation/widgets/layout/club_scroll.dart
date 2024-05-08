import 'package:flutter/material.dart';
import 'package:theatre/data/model/event_model.dart';
import 'package:theatre/presentation/widgets/cards/club_card.dart';

class ClubScroll extends StatelessWidget {
  const ClubScroll({
    super.key,
    required this.events,
  });

  final List<EventModel> events;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            return ClubCard();
          }),
    );
  }
}
