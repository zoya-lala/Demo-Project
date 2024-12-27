import 'package:flutter/material.dart';

Widget buildCard(String name, String role, String mobile, String email,
    String reportTo, String joinedOn, bool isAdmin) {
  return Card(
    margin: EdgeInsets.all(16),
    color: Colors.grey[900],
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(
                      name[0],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        role,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 4.0,
                    ),
                    decoration: BoxDecoration(
                      color: isAdmin ? Colors.red : Colors.green,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      isAdmin ? 'Admin' : 'User',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile No.',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        mobile,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        email,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
                child: VerticalDivider(
                  thickness: 2.0,
                  width: 2.0,
                  color: Colors.grey,
                ),
              ),
              // Divider(
              //   thickness: 2.0,
              //   height: 50.0,
              //   color: Colors.white,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Reporting To',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        reportTo,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Joined On',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        joinedOn,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget list() {
  return ListView(
    children: [
      buildCard(
        'Harsh Test',
        'HR',
        '+91741369630',
        'jejahal224@ronete.com',
        'Harsh Vasoya',
        '26 December 2024',
        false,
      ),
      buildCard("Ayush Test", "HR", "+919876543210", "febec98736@owube.com",
          "NA", "25 December 2024", true),
      buildCard(
        "Harsh Vasoya",
        "HR",
        "+919632587410",
        "yosi88624@pokeline.com",
        "NA",
        "23 December 2024",
        true,
      ),
    ],
  );
}
