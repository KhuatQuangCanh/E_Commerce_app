import 'package:flutter/material.dart';
import 'package:shopping_app/utils/constants/colors.dart';
import 'package:shopping_app/utils/device/device_utility.dart';
import 'package:shopping_app/utils/helpers/helper_functions.dart';
class TTabbar extends StatelessWidget implements PreferredSizeWidget {
  const TTabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,

      ),
    );
  }


  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}