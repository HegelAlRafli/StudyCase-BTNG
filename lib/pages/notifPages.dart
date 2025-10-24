import 'package:flutter/material.dart';

class NotifPages extends StatefulWidget {
  const NotifPages({super.key});

  @override
  State<NotifPages> createState() => _NotifPagesState();
}

class _NotifPagesState extends State<NotifPages> {
  List notifications = [
    {
      'title':
          "Exciting news! There's a fresh freelance opportunity waiting for you. Don't miss ou...",
      'time': '1h ago',
    },
    {
      'title':
          "Hey there! You've got a new message waiting for you. Open it now to stay...",
      'time': '2h ago',
    },
    {
      'title':
          "Great news! We've just added new freelance opportunities that match your...",
      'time': '3h ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Notification"),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 15),
                ListView.builder(
                  itemCount: notifications.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 1,
                      color: Colors.white,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Color(0xFFE6E6E6)),
                            // borderRadius: BorderRadius.circular(8),
                            ),
                        child: Row(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.mail_outline,
                                size: 32,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 18),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    notifications[index]['title'],
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    notifications[index]['time'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
