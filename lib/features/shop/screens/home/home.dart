import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopping_app/common/widgets/layouts/grid_layout.dart';
import 'package:shopping_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/features/shop/screens/all_products/all_products.dart';
import 'package:shopping_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shopping_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shopping_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  // searchbar
                  TSearchContainer(
                    text: 'Search in store',
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // -- heading
                        TSectionHeading(title: 'Popular Categories',showActionButton: false,textColor: TColors.white,),

                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        // category
                        THomeCategories(),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            ///Body

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banner: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  // heading
                  TSectionHeading(title: 'Popular Products',onPressed: () => Get.to(() => const AllProducts()),),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  // Popular product
                  TGridLayout(itemCount: 4, itemBuilder: (_, index ) => const TProductCardVertical(),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

