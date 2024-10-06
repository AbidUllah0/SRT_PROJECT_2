import 'package:flutter/material.dart';
import 'package:user_interaction_navigation/presentation/widgets/custom_button.dart';
import 'package:user_interaction_navigation/presentation/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  String name, email;

  HomeScreen({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'Home Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(text: "Name : $name"),
            const SizedBox(height: 15),
            CustomText(text: 'Email : $email'),
            const SizedBox(height: 15),
            CustomButton(
              btnText: 'Go Back To Login Screen',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
