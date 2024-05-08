import 'package:flutter/material.dart';
import 'package:theatre/data/model/event_model.dart';
import 'package:theatre/presentation/page/overview/event_overview_page.dart';
import 'package:theatre/presentation/widgets/cards/event_card.dart';

class EventScroll extends StatelessWidget {
  const EventScroll({
    super.key,
    required this.events,
  });

  final List<EventModel> events;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              EventOverviewPage(event: event)));
                },
                child: EventCard(
                  title: event.title,
                  description: event.description,
                  imageUrl: event.image,
                ),
              ),
            );
          }),
    );
  }
}
