import 'package:flutter/material.dart';

// Profile Page
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Profile', style: Theme.of(context).textTheme.titleMedium),
        ),
      ),

      body: ListView(
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0), // Adjust the right padding
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage("https://image-cdn.essentiallysports.com/wp-content/uploads/arnold-schwarzenegger-volume-workout-1110x788.jpg"),
                    ),
                  ),
                  SizedBox(width: 10.0), // Adjust the width of the SizedBox for additional space between CircleAvatar and Text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.0),
                      Text('Arnold Schwarzenegger', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                      Text('@arnold', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5.0), // Add a SizedBox to create space between Text widgets
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('1'),
                              Text('Workouts', style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(width: 20.0),
                          Column(
                            children: [
                              Text('1M'),
                              Text('Followers', style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(width: 20.0),
                          Column(
                            children: [
                              Text('100'),
                              Text('Following', style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ]
                      )
                    ],
                  ),
                ],
              ),
              // Add more widgets to the Column if needed
            ],
          ),
        ],
      ),
    );
  }
}
