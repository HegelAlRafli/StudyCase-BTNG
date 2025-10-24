import 'package:flutter/material.dart';

class ProfilePages extends StatefulWidget {
  const ProfilePages({super.key});

  @override
  State<ProfilePages> createState() => _ProfilePagesState();
}

class _ProfilePagesState extends State<ProfilePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Signuppage()),
              // );
            },
            icon: Icon(Icons.exit_to_app_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            InkWell(
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/profiles.jpg',
                        ),
                      ),
                      SizedBox(width: 24),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Alena Sabyan"),
                          Text("Fulturu Developer"),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    child: ListTile(
                      leading: Icon(Icons.person, color: Colors.black),
                      title: Text('Edit Profile'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                  ),
                  Divider(),
                  InkWell(
                    child: ListTile(
                      leading: Icon(Icons.receipt, color: Colors.black),
                      title: Text('Order Delivered'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                  ),
                  Divider(),
                  InkWell(
                    child: ListTile(
                      leading: Icon(Icons.access_time, color: Colors.black),
                      title: Text('Settings'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                  ),
                  Divider(),
                  GestureDetector(
                    child: ListTile(
                      leading: Icon(Icons.help_outline, color: Colors.black),
                      title: Text('Faq'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
