import 'package:Ryan/core/utils/colors.dart';
import 'package:Ryan/core/utils/common_functions.dart';
import 'package:Ryan/screens/medical_services_screen/widget/social_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widget/drawer.dart';

class MedicalServices extends StatelessWidget {
  const MedicalServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/world_icon.svg'),
          ),
        ],
      ),
      drawer: const HomeDrawer(),
      body: Column(
        children: [
          Text(
            'نحن في خدمتك في أي وقت ',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.secondaryColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              'يمكنك الأستفاده من خدماتنا التأمينيه من خلال',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          heightSpace(10),
          Expanded(
            child: Column(
              children: [
                SocialWidget(
                  color: AppColors.greyColor,
                  leadingIcon: SvgPicture.asset(
                    'assets/icons/whatsapp-icon.svg',
                    height: 40,
                  ),
                  trailingIcon: Icons.arrow_back_ios_new_outlined,
                  title: 'واتساب',
                  supTitle: '+201011699850',
                  supTextStyle: TextStyle(
                      color: AppColors.thirdColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  titleTextStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SocialWidget(
                  color: AppColors.greyColor,
                  leadingIcon: SvgPicture.asset(
                    'assets/icons/telegram_icon.svg',
                    height: 40,
                  ),
                  trailingIcon: Icons.arrow_back_ios_new_outlined,
                  title: 'تيليجرام',
                  supTitle: '@beyon_cs_bot',
                  supTextStyle: TextStyle(
                      color: AppColors.thirdColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  titleTextStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SocialWidget(
                  color: AppColors.secondaryColor,
                  leadingIcon: SvgPicture.asset(
                    'assets/icons/map_location.svg',
                    height: 40,
                  ),
                  trailingIcon: Icons.arrow_back_ios_new_outlined,
                  title: ' أو اكتشف',
                  supTitle: 'الشبكه الطبيه',
                  supTextStyle: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  titleTextStyle: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
