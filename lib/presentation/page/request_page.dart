import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:theatre/core/constants/data.dart';

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
                return InkWell(
                  onTap: () {
                    print('Candidate Details');
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Candidate Details',
                                style: theme.textTheme.displayLarge),
                            content: SizedBox(
                              height: 40,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        'Name: ${candidate.name} ${candidate.surname}'),
                                    Text('Phone: ${candidate.phoneNumber}'),
                                  ]),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  const SnackBar(
                                    content: Text('Candidate Approved'),
                                  );
                                },
                                child: Text('Approve'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  const SnackBar(
                                    content: Text('Candidate Rejected'),
                                  );
                                },
                                child: Text('Reject'),
                              ),
                            ],
                          );
                        });
                  },
                  child: Card(
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
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
