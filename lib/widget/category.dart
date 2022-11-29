import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String imgURL;
  final void Function()? onTap;
  const Category({
    Key? key,
    required this.imgURL,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            10,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 5),
                child: InkWell(
                  onTap: onTap,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(imgURL),
                    maxRadius: 40,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
