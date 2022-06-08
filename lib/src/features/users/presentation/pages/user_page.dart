import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yansol/src/features/users/data/models/user.dart';
import 'package:yansol/src/features/users/presentation/bloc/user_bloc.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    child: const Text(
                      'Create',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.download,
                    ),
                    tooltip: 'Export all',
                    iconSize: 25,
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              width: size.width * 0.8,
              child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      prefix: Icon(Icons.search),
                      hintText: 'Search User')),
            ),
            BlocBuilder<UserBloc, UserState>(builder: (context, state) {
              if (state is UsersLoadedState) {
                final users = state.users;
                return ListView.builder(
                  itemCount: users.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => _buildUserItem(users[index]),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
          ],
        ));
  }

  Widget _buildUserItem(User user) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text(user.name), Text(user.login)],
          ),
          Row(
            children: [
              Text(
                "${user.companyId?[1]}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "${user.id}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
