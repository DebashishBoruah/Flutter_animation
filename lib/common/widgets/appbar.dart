import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghibli_studio/utils/constants/colors.dart';
import 'package:ghibli_studio/utils/device/device_utility.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

  class GhibliAppBar extends StatelessWidget implements PreferredSizeWidget {
  GhibliAppBar({super.key, this.appbarName, required this.showBackArrow, this.leadingIcon, this.actions, this.leadingOnPressed,

  });
  final Widget? appbarName;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
       automaticallyImplyLeading: false,
       leading: showBackArrow 
       ? IconButton(onPressed: () => Get.back(),color: TColors.accent, icon:const Icon(Iconsax.arrow_left_2))
       : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)):null,
       title: appbarName,
       actions:actions,
      ),);
  }
  Size preferredSize = Size.fromHeight(TDeviceUtils.getAppBarHeight());
}