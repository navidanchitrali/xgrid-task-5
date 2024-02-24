import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  IconData leadingIcon;
  IconData trailingIcon;
  String title;
  CustomContainer(
      {Key? key,
      required this.leadingIcon,
      required this.trailingIcon,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
          height: 80,
          width: MediaQuery.of(context).size.width / 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15,
              ),
              color: Colors.grey),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(this.leadingIcon),
              Text(this.title),
              Icon(this.trailingIcon)
            ],
          )),
    );
  }
}
