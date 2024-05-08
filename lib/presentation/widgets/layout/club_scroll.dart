import 'package:flutter/material.dart';
import 'package:theatre/data/model/club_model.dart';
import 'package:theatre/presentation/page/overview/club_overview_page.dart';
import 'package:theatre/presentation/widgets/cards/club_card.dart';

class ClubScroll extends StatelessWidget {
  const ClubScroll({
    super.key,
    required this.clubs,
  });

  final List<ClubModel> clubs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: clubs.length,
          itemBuilder: (context, index) {
            final club = clubs[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ClubOverviewPage(club: club)),
                  );
                },
                child: ClubCard(
                  title: club.title,
                  imageUrl: club.image,
                  description: club.description,
                ),
              ),
            );
          }),
    );
  }
}
