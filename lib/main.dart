import 'package:flutter/material.dart';
import 'package:test_app/custom%20widget/custom_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X Grid task 8',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SettingPage(),
    );
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 55,
                backgroundColor: Colors.amber,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.brown,
                  child: Icon(
                    Icons.person,
                    color: Colors.amber,
                    size: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'John Doe',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('john.deo.example.com'),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text('Upgrade To PRO')),
              ),
              CustomContainer(
                  leadingIcon: Icons.privacy_tip,
                  trailingIcon: Icons.arrow_forward_ios,
                  title: 'Privacy'),
              CustomContainer(
                  leadingIcon: Icons.privacy_tip,
                  trailingIcon: Icons.arrow_forward_ios,
                  title: 'Purchase History'),
              CustomContainer(
                  leadingIcon: Icons.history,
                  trailingIcon: Icons.arrow_forward_ios,
                  title: 'Help and Support'),
              CustomContainer(
                  leadingIcon: Icons.help,
                  trailingIcon: Icons.arrow_forward_ios,
                  title: 'Settings'),
              CustomContainer(
                  leadingIcon: Icons.inventory_outlined,
                  trailingIcon: Icons.arrow_forward_ios,
                  title: 'Invite a Friend'),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                    child: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
