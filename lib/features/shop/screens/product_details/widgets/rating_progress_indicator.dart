import 'package:babycare/features/shop/screens/product_details/widgets/rating_detail_container.dart';
import 'package:flutter/material.dart';

class TOverAllProductRating extends StatelessWidget {
  const TOverAllProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,  child: Text('4.8',style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(value: 1.0,text: '5',),
              RatingProgressIndicator(value: 0.5,text: '4',),
              RatingProgressIndicator(value: 0.8,text: '3'),
              RatingProgressIndicator(value: 0.4,text: '2'),
              RatingProgressIndicator(value: 0.3,text: '1'),
            ],
          ),
        )
      ],
    );
  }
}