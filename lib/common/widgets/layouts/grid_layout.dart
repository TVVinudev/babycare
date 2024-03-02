import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key, required this.itemCount, this.mainAxisExtent = 288, required this.itemBuild,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext,int) itemBuild;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: TSize.gridViewSpacing,
            mainAxisSpacing: TSize.gridViewSpacing,
            mainAxisExtent: mainAxisExtent
        ),
        itemBuilder: itemBuild,
    );
  }
}

