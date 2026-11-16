import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_users_app/Providers/RandomUserProvider.dart';

import 'UserDetails.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Randomuserprovider obj = Provider.of<Randomuserprovider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Users")),
      body: Consumer<Randomuserprovider>(
        builder: (context, provider, child) {
          if (provider.RandomUsersList!.isEmpty) {
            provider.GetRandomUsersProvider();
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: provider.RandomUsersList!.length,
            itemBuilder: (context, index) {
              final user = provider.RandomUsersList![index];

              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.picture),
                ),
                title: Text("${user.fName} ${user.lName}"),
                subtitle: Text(user.email),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetails(user: user),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          obj.GetRandomUsersProvider();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
