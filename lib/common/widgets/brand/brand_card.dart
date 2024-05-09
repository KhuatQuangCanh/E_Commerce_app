import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/images/circular_image.dart';
import 'package:shopping_app/common/widgets/products/product_cards/rounded_container.dart';
import 'package:shopping_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/enums.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';


class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder, this.ontap,
  });
  final bool showBorder;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // icon
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: TImages.nikeIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),

            //text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWidthVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 product',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}