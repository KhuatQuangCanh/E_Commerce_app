import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shopping_app/common/widgets/products/product_cards/rounded_container.dart';
import 'package:shopping_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.user),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('KQc sj', style: Theme.of(context).textTheme.titleLarge,),

              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            //Review
            Row(
              children: [
                const TRatingBarIndicator(rating: 4),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('01/05/2024', style: Theme.of(context).textTheme.bodyMedium,)
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            ReadMoreText(
              'Shoes [1] are an item that goes on the human foot to protect and cushion the foot while performing various activities. Although the human foot can adapt to many different types of terrain and climatic conditions, it is still very vulnerable and helps shoes protect the foot.',
              trimLines: 2,
              trimMode: TrimMode.Line,
              style: Theme.of(context).textTheme.labelLarge,
              trimExpandedText: 'show less',
              trimCollapsedText: 'show more',
              moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: TColors.primary),
              lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800,color: TColors.primary),

            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            TRoundedContainer(
              backgroundColor: dark? TColors.darkerGrey: TColors.grey,
              child: Padding(
                  padding: const EdgeInsets.all(TSizes.md),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nike's Store", style: Theme.of(context).textTheme.bodyLarge,),
                      Text('20/06/2024', style: Theme.of(context).textTheme.bodyMedium,),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  ReadMoreText(
                    'Shoes [1] are an item that goes on the human foot to protect and cushion the foot while performing various activities. Although the human foot can adapt to many different types of terrain and climatic conditions, it is still very vulnerable and helps shoes protect the foot.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    style: Theme.of(context).textTheme.labelLarge,
                    trimExpandedText: 'show less',
                    trimCollapsedText: 'show more',
                    moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: TColors.primary),
                    lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800,color: TColors.primary),

                  ),
                ],
              ),),
            ),
            const SizedBox(height: TSizes.spaceBtwSections,)

      ],
    );
  }
}
