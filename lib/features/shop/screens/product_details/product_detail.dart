import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:shopping_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:shopping_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

class ProductDetailScreeen extends StatelessWidget {
  const ProductDetailScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --product image Slider
            const TProductImageSlider(),

            /// product detail
            Padding(padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                /// - Rating $ Share
                const TRatingAndShare(),

                ///  - Price, title, stack, brand
                const TProductMetaData(),

                ///  - Attributes
                const TProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwSections,),

                ///  - Checkout Buton
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text('Checkout'))),
                const SizedBox(height: TSizes.spaceBtwSections,),
                ///   - Description
                const TSectionHeading(title: 'Description', showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                ReadMoreText(
                  'Shoes [1] are an item that goes on the human foot to protect and cushion the foot while performing various activities. Although the human foot can adapt to many different types of terrain and climatic conditions, it is still very vulnerable and helps shoes protect the foot.',
                  trimLines: 2,
                  style: Theme.of(context).textTheme.labelLarge,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Less',
                  moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: TColors.primary),
                  lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: TColors.primary),
                ),
                ///   - Reviews
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TSectionHeading(title: 'Reviews(199)',showActionButton: false,),
                    IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18,),onPressed: () => Get.to(() =>const ProductReviewsScreen()),)
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
              ],



            ),)
          ],
        ),
      ),
    );
  }
}

