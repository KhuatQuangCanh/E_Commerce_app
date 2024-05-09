import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/products/product_cards/rounded_container.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 8,
      separatorBuilder: (_, index) => const SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_, index) => TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spaceBtwItems / 2,),
      
                // status & date
      
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontWeightDelta: 1),),
                      Text('07/06/2002', style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
                
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm,))
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
      
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSizes.spaceBtwItems / 2,),
      
                      // status & date
      
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('[#852065]', style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
      
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSizes.spaceBtwItems / 2,),
      
                      // status & date
      
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('20/07/2025', style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
      
                    ],
                  ),
                ),
              ],
            ),
      
          ],
        ),
      
      ),
    );
  }
}
