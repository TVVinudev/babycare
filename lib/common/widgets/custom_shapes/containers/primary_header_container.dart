import 'package:babycare/utils/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidgets(
      child: Container(
        color: TColor.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top: -150,right:-250,child: TCircularContainer(backgroundColor: TColor.white.withOpacity(0.1),)),
              Positioned(top: 100,right:-300,child: TCircularContainer(backgroundColor: TColor.white.withOpacity(0.1),)),
              Container(child: child,)
            ],
          ),
        ),
      ),
    );
  }
}