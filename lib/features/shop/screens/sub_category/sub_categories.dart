import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/images/rounded_image.dart';
import 'package:shopping_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports'), showBackArrow:  true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            const TRoundedImage(
              width: double.infinity,
                height: null,
                applyImageRadius: true,
                imageUrl: TImages.promoBanner2,
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),

            Column(
              children: [
                TSectionHeading(
                    title: 'Sports shirts',
                  onPressed: () {},
                ),
                const SizedBox(height: TSizes.spaceBtwItems / 2,),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems,),
                    itemBuilder: (context,index) => const TProductCardHorizontal()
                  ),
                ),
              ],
            )
          ],
        ),),
      ),
    );
  }
}
