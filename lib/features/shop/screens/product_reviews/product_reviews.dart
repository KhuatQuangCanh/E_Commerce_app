import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:shopping_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// app bar
       appBar: const TAppBar(title: Text('Review & Ratings'), showBackArrow: true,),
      /// body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
            const SizedBox(height: TSizes.spaceBtwItems,),

            // overall product rating
            const TOverallProductRating(),
            const TRatingBarIndicator(rating: 3.5,),
            Text('13,987', style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: TSizes.spaceBtwSections,),

            // user review list
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
        ),
      ),
    );
  }
}


