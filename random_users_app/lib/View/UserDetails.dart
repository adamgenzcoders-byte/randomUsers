import 'package:flutter/material.dart';
import 'package:random_users_app/Models/RandomUsersModel.dart';

class UserDetails extends StatelessWidget {
  final RandomUserModel user;

  const UserDetails({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${user.fName} ${user.lName}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(user.picture),
            ),
            const SizedBox(height: 20),
            Text(
              "${user.fName} ${user.lName}",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              user.email,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
