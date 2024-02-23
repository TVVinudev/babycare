import 'package:babycare/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class TCurvedEdgesWidgets extends StatelessWidget {
  const TCurvedEdgesWidgets({
    super.key, this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: TCurvedEdges(),
        child: child
    );
  }
}
