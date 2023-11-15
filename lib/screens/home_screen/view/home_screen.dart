import 'package:Ryan/core/utils/colors.dart';
import 'package:Ryan/core/utils/common_functions.dart';
import 'package:Ryan/screens/home_screen/view_model/home_screen_view_model.dart';
import 'package:Ryan/screens/home_screen/widget/drawer.dart';
import 'package:Ryan/services/services_locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/container_body.dart';
import '../widget/tabBar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => locator<HomeScreenViewModel>(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: HomeDrawer(),
      ),
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'اكتشف',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.fourthColor,
                ),
              ),
              Text(
                'شبكتك الطبية',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                ),
              ),
              heightSpace(25),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => const ListOfContainer(),
                  ),
                ),
              ),
            ]),
          ),
          heightSpace(45),
          Expanded(
            child: Consumer<HomeScreenViewModel>(builder: (ctx, viewModel, _) {
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ContainerBody(
                      viewModel: viewModel,
                    ),
                  ]);
            }),
          ),
        ],
      ),
    );
  }
}
