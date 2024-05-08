import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theatre/data/model/club_model.dart';
import 'package:theatre/presentation/cubit/role_cubit.dart';

class ClubOverviewPage extends StatelessWidget {
  const ClubOverviewPage({super.key, required this.club});

  final ClubModel club;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<RoleCubit, RoleState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(club.title),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image with rounded corners
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(club.image, fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 16.0),
                  // Title with status indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          club.title,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Chip(
                        label: Text(club.isActive ? "Active" : "Inactive"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  // Description
                  Text(club.description),
                  const SizedBox(height: 16.0),
                  // Details section
                  _buildDetailsSection(
                    title: "Schedule",
                    content: club.schedule,
                  ),
                  _buildDetailsSection(
                    title: "Contact Details",
                    content: club.contactDetails,
                  ),
                  const SizedBox(height: 16.0),
                  // Leadership section
                  _buildTitledSection(
                    title: "Leadership",
                    children: club.headsOfClub.map((leader) {
                      return Text(
                        leader,
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 16.0),
                  // Availability section
                  _buildTitledSection(
                    title: "Availability",
                    children: [
                      Text("Spots Available: ${club.freeSpots}"),
                      Text("Total Spots: ${club.totalSpots}"),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  // Price section (if applicable)
                  if (club.price > 0)
                    Text(
                      "Price: \$${club.price}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                ],
              ),
            ),
          ),
          floatingActionButton: state == RoleState.admin
              ? FloatingActionButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Editing club'),
                    ));
                  },
                  child: Icon(Icons.edit),
                )
              : null,
          bottomNavigationBar: state == RoleState.viewer
              ? BottomAppBar(
                  color: Colors.transparent,
                  elevation: 0,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              'Request Form',
                              style: theme.textTheme.displayLarge,
                            ),
                            content: SizedBox(
                              height: 350,
                              child: Form(
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration:
                                          InputDecoration(labelText: 'Name'),
                                      // Add validation logic here
                                    ),
                                    TextFormField(
                                      decoration:
                                          InputDecoration(labelText: 'Surname'),
                                      // Add validation logic here
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'Phone Number'),
                                      // Add validation logic here
                                    ),
                                    TextFormField(
                                      decoration:
                                          InputDecoration(labelText: 'Gender'),
                                      // Add validation logic here
                                    ),
                                    TextFormField(
                                      decoration:
                                          InputDecoration(labelText: 'Age'),
                                      // Add validation logic here
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Cancel'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: Text('Submit'),
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text('Request submitted!'),
                                  ));
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Request Form'),
                  ),
                )
              : null,
        );
      },
    );
  }
}

Widget _buildDetailsSection({required String title, required String content}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "$title:",
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(width: 8.0),
      Expanded(child: Text(content)),
    ],
  );
}

Widget _buildTitledSection(
    {required String title, required List<Widget> children}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 8.0),
      ...children,
    ],
  );
}
