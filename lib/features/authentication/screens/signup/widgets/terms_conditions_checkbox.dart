import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/sizes.dart';
import 'package:shopping_app/utils/constants/text_string.dart';

class TTerms_conditions_checkbox extends StatelessWidget {
  const TTerms_conditions_checkbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${TTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: TColors.primary,
                    // color: dark? Colors.white: TColors.primary,
                    // decoration: TextDecoration.underline,
                    // decorationColor: dark? Colors.white: TColors.primary,
                  )),
          TextSpan(
              text: '${TTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: TTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: TColors.primary,
                    // color: dark? Colors.white: TColors.primary,
                    // decoration: TextDecoration.underline,
                    // decorationColor: dark? Colors.white: TColors.primary,
                  )),
        ]))
      ],
    );
  }
}
