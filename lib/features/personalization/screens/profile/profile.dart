import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/common/widgets/appbar/appbar.dart';
import 'package:shopping_app/common/widgets/images/circular_image.dart';
import 'package:shopping_app/common/widgets/texts/section_heading.dart';
import 'package:shopping_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:shopping_app/utils/constants/image_strings.dart';
import 'package:shopping_app/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      // body
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(image: TImages.user, width: 80, height: 80,),
                  TextButton(onPressed: () {}, child: const Text('Change Profile Picture')),
                ],
              ),
            ),

            ///Details

            const SizedBox(height: TSizes.spaceBtwItems/2,),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems/1.5,),
            const TSectionHeading(title: 'Profile Information', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems,),

            TProfileMenu(title: 'Name', value: 'Khuat Quang Canh', onpressed: () {},),
            TProfileMenu(title: 'Username', value: 'Khuat Quang Canh', onpressed: () {},),

            const SizedBox(height: TSizes.spaceBtwItems/1.5,),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems/1.5,),

            ///heading personal info
            const TSectionHeading(title: 'Personal Information', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems,),

            TProfileMenu(title: 'User ID', value: '852000',icon: Iconsax.copy , onpressed: () {},),
            TProfileMenu(title: 'E-mail', value: 'kqc07062002@gmail.com', onpressed: () {},),
            TProfileMenu(title: 'Phone Number', value: '0353076020', onpressed: () {},),
            TProfileMenu(title: 'Gender', value: 'Male', onpressed: () {},),
            TProfileMenu(title: 'Date of Birth', value: '07/06/2002', onpressed: () {},),

            const SizedBox(height: TSizes.spaceBtwItems/1.5,),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems/2,),


            Center(
              child: TextButton(onPressed: () {}, child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
            )

          ],
        ),
        ),
      ),
    );
  }
}
