import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/chips/choice_chip.dart';
import 'package:shopping_app/common/widgets/products/product_cards/product_price_text.dart';
import 'package:shopping_app/common/widgets/products/product_cards/rounded_container.dart';
import 'package:shopping_app/common/widgets/texts/product_title_text.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              //title price and stock
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),

                          // actual price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),

                          //sale price
                          const TProductPriceText(price: '20'),
                        ],
                      ),

                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock : ', smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              // variation description
              
              const TProductTitleText(
                  title: 'This is the Description of the Product and it can go up to max 4 line.',
              smallSize: true,
              maxLines: 4,),

            ],
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems,),


        /// attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
          Wrap(
            spacing: 8,
            children: [
              TChoiceChip(text: 'Green', selected: true,onSelected: (value) {},),
              TChoiceChip(text: 'Blue', selected: true,onSelected: (value) {},),
              TChoiceChip(text: 'Yellow', selected: false,onSelected: (value) {},),
            ],
          )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Sizes', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
          Wrap(
            spacing: 8,
            children: [
              TChoiceChip(text: '34', selected: true,onSelected: (value) {},),
              TChoiceChip(text: '36', selected: false,onSelected: (value) {},),
              TChoiceChip(text: '38', selected: false,onSelected: (value) {},),
              TChoiceChip(text: '36', selected: false,onSelected: (value) {},),
              TChoiceChip(text: '38', selected: false,onSelected: (value) {},),

            ],
          )
          ],
        ),

      ],
    );
  }
}

