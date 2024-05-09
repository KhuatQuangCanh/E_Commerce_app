import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //subtotal
        Row(
          children: [
            Expanded(
                child: Text(
                  'Subtotal ',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            Text(
              '\$200.0',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            Expanded(
                child: Text(
                  'Shipping Fee ',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            Text(
              '\$5.0',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            Expanded(
                child: Text(
                  'Tax Fee',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            Text(
              '\$5.0',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            Expanded(
                child: Text(
                  'Order Total',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            Text(
              '\$5.0',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ],
    );
  }
}
