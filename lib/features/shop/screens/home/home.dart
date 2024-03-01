import 'package:babycare/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:babycare/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:babycare/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                THomeAppBar(),
                SizedBox(
                  height: TSize.spaceBtwSections,
                ),
                TSearchContainer(text: 'Search' ,),
              ],
            ),
          )
        ],
      ),
    ));
  }
}


