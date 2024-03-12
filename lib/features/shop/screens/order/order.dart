import 'package:babycare/common/widgets/appbar/appbar.dart';
import 'package:babycare/features/shop/screens/order/widget/order_list.dart';
import 'package:babycare/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('My Order',style: Theme.of(context).textTheme.headlineSmall,),showBackArrow: true,),
      body: const Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
         child: TOrderListItems(),
      ),
    );
  }
}
