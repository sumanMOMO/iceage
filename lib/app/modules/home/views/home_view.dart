import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ice_app/app/modules/category/views/category_view.dart';
import '../../../../widget/category.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
       
          
          actions: const [
            CircleAvatar(
              maxRadius: 40,
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/photos/studio-portrait-of-attractive-20-year-old-bearded-man-picture-id1351147752?b=1&k=20&m=1351147752&s=170667a&w=0&h=txEdYegsKceJkltlTnz0hVdaX6wjlDL_vWAjEC_a6Ys='),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Flexible(
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Category(
                  imgURL:
                     'https://www.doublenoice.com/wp-content/uploads/2021/08/Rhomboid-ice-768x512.jpg',
                  name: 'ssman',
                  onTap: () => Get.to(const CategoryView()),
                ),
                const SizedBox(
                  width: 15,
                ),
                Category(
                  imgURL:
                      'https://media.gettyimages.com/photos/extreme-close-up-of-ice-diamond-picture-id911977782?s=2048x2048',
                  name: 'ssman',
                  onTap: () => Get.to(const CategoryView()),
                ),
                const SizedBox(
                  width: 15,
                ),
                Category(
                  imgURL:
                      'https://media.istockphoto.com/photos/ice-sphere-picture-id450082231?k=20&m=450082231&s=612x612&w=0&h=UGRLDA-IhN1dyTYNrrwN35O9_jcVG_dwGKmNwgoG-gE=',
                  name: 'ssman',
                  onTap: () => Get.to(const CategoryView()),
                ),
                const SizedBox(
                  width: 15,
                ),
                Category(
                  imgURL:
                      'https://media.istockphoto.com/photos/ice-cubes-picture-id177131518?s=170667a',
                  name: 'ssman',
                  onTap: () => Get.to(const CategoryView()),
                ),
                const SizedBox(
                  width: 15,
                ),
                Category(
                  imgURL:
                      'https://www.doublenoice.com/wp-content/uploads/2021/08/Top-Hats-Ice-Cubes.jpg',
                  name: 'ssman',
                  onTap: () => Get.to(const CategoryView()),
                ),
              ],
            ),
          ),
        ));
  }
}
