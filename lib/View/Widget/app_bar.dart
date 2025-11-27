import 'package:flutter/material.dart';
import 'package:learn_nova/Utils/AppColors/app_colors.dart';
import 'package:learn_nova/Utils/AppString/app_string.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(150.0);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: preferredSize.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
        color: AppColors.themeColor

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         SizedBox(
           height: 150,
             width: 150,
             child: Image.asset('assets/Icons/icon.png')),
         Text(AppString.appName,style: TextStyle(
           color: Colors.white,
           fontSize: 24,
           fontWeight: FontWeight.w700
         ),)
          // Text(AppString.appName)


        ],
      ),
    );
  }
}