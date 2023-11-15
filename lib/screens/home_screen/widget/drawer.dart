import 'package:Ryan/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 50.0, right: 20),
            child: CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.person,
                size: 25,
              ),
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
              child: Divider(height: 1, color: AppColors.whiteColor)),
          ListTile(
              leading: SvgPicture.asset('assets/icons/home-outline.svg',
                  color: AppColors.whiteColor),
              title: Text('الصفحة الرئيسية',
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold))),
          ListTile(
              leading: SvgPicture.asset('assets/icons/map-pin-add-line.svg',
                  color: AppColors.whiteColor),
              title: Text('الشبكة الطبية',
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold))),
          ListTile(
              leading: Icon(Icons.person_outline_rounded,
                  color: AppColors.whiteColor),
              title: Text('الملف الشخصي',
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold))),
          ListTile(
              leading:
                  Icon(Icons.settings_outlined, color: AppColors.whiteColor),
              title: Text('إعدادات',
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold))),
          ListTile(
              leading: SvgPicture.asset('assets/icons/question-icon.svg',
                  width: 26, color: AppColors.whiteColor),
              title: Text('الأسئلة الشائعة',
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold))),
          ListTile(
              leading: SvgPicture.asset('assets/icons/comment-alert.svg',
                  color: AppColors.whiteColor),
              title: Text('تقديم شكوي',
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold))),
          ListTile(
              leading: Icon(Icons.exit_to_app, color: AppColors.whiteColor),
              title: Text('تسجيل الخروج',
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold))),
          // Add more ListTile items here for your drawer
        ],
      ),
    );
  }
}
