import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/images/circular_image.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';


class TUserProfileTitle extends StatelessWidget {
  const TUserProfileTitle({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Khuat Quang Canh' ,style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text('kqc07062002@gmail.com' ,style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
      trailing:  IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: TColors.white,)),
    );
  }
}