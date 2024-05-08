import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:theatre/data/model/candidate_model.dart';

List<CandidateModel> candidates = [
  CandidateModel(
      name: 'John',
      surname: 'Doe',
      phoneNumber: '1234567890',
      gender: 'Male',
      age: 30),
  CandidateModel(
      name: 'Jane',
      surname: 'Doe',
      phoneNumber: '0987654321',
      gender: 'Female',
      age: 28),
  CandidateModel(
      name: 'Bob',
      surname: 'Smith',
      phoneNumber: '1122334455',
      gender: 'Male',
      age: 35),
];

@RoutePage()
class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Request',
              style: theme.textTheme.displayLarge,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: candidates.length,
              itemBuilder: (context, index) {
                final candidate = candidates[index];
                return Card(
                  elevation: 5,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.cardColor,
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      leading: Container(
                        padding: const EdgeInsets.only(right: 12),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                        child: Icon(Icons.person, color: theme.primaryColor),
                      ),
                      title: Text(
                        '${candidate.name} ${candidate.surname}',
                        style: theme.textTheme.headlineMedium!
                            .copyWith(color: Colors.black),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone: ${candidate.phoneNumber}',
                            style: theme.textTheme.headlineMedium!
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            'Gender: ${candidate.gender}',
                            style: theme.textTheme.headlineMedium!
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            'Age: ${candidate.age}',
                            style: theme.textTheme.headlineSmall!
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
