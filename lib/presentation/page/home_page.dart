import 'package:flutter/material.dart';
import 'package:theatre/presentation/widgets/cards/overview_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeMoviePage();
}

class _HomeMoviePage extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App Title',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            icon: CircleAvatar(
                // backgroundImage: NetworkImage(),
                ),
            onPressed: () {
              // Handle avatar click here
            },
          ),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              "Events",
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline2?.color,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  OverviewCard(),
                  OverviewCard(),
                  OverviewCard(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Clubs",
              style: TextStyle(
                  color: Theme.of(context).textTheme.headline2?.color,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  OverviewCard(),
                  OverviewCard(),
                  OverviewCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
