import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';


class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),

        //title
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWidthVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: TProductTitleText(
                  title: 'Black Sports shoes ',
                  maxLines: 1,
                ),
              ),
              // attributes

              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '41 ',
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
