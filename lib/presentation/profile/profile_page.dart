import 'package:flutter/material.dart';
import '../../lib.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: H1Atm("Profile Page!"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: PrimaryButton(
                title: "Logout",
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
