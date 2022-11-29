import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ice_app/app/modules/category/views/category_view.dart';
import 'package:ice_app/app/modules/profile/views/profile_view.dart';
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
        actions: [
          InkWell(
            child: const  
              CircleAvatar(
                maxRadius: 40,
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/photos/studio-portrait-of-attractive-20-year-old-bearded-man-picture-id1351147752?b=1&k=20&m=1351147752&s=170667a&w=0&h=txEdYegsKceJkltlTnz0hVdaX6wjlDL_vWAjEC_a6Ys='),
              ),
              onTap: () =>  Get.to(ProfileView()),
              ),
            ],
          ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Category(
          imgURL:
              'https://www.doublenoice.com/wp-content/uploads/2021/08/Rhomboid-ice-768x512.jpg',
          onTap: () => Get.to(const CategoryView()),
        ),
      ),
    
    );
  }
}
