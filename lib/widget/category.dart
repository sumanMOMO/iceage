import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  final String imgURL;
  final void Function()? onTap;
  const Category(
      {Key? key, required this.imgURL, required this.onTap, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          InkWell(
              onTap: onTap,
              child: CircleAvatar(
                backgroundImage: NetworkImage(imgURL),
                maxRadius: 40,
              ),),
              Text(name),
        ],
      ),
    );
  }
}
