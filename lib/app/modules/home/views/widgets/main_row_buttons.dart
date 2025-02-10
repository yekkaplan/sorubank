import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

class CustomButtonRow extends StatelessWidget {
  const CustomButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h, bottom: 8), // Add spacing from the top
      child: Wrap(
        spacing: 8.w, // Proportional spacing
        runSpacing: 8.h, // Proportional runSpacing
        children: [
          _buildButton(_ButtonConfig(
            onTap: () => Get.toNamed(Routes.CONTENT_PAGE),
            subLabel: 'En Güncel Kpss Soruları & Çözümleri',
            iconPath: 'assets/vectors/note.svg',
            label: 'KPSS',
            width: 0.5.sw, // Proportional width
          )),
          _buildButton(_ButtonConfig(
            onTap: () => Get.toNamed(Routes.TESTLIST),
            iconPath: 'assets/vectors/open_note.svg',
            subLabel: 'En Güncel TYT-AYT Soruları & Çözümleri',
            label: 'TYT-AYT',
            width: 0.4.sw,
          )),
          _buildButton(_ButtonConfig(
            onTap: () {},
            iconPath: 'assets/vectors/car.svg',
            subLabel: 'Ehliyet Soruları & Çözümleri',
            label: 'Ehliyet',
            width: 0.4.sw,
          )),
          _buildButton(_ButtonConfig(
            onTap: () => Get.toNamed(Routes.TESTLIST),
            iconPath: 'assets/vectors/yds.svg',
            subLabel: 'Yabancı Dil Hazırlık Soruları & Çözümleri',
            label: 'YDS',
            width: 0.5.sw,
          )),
        ],
      ),
    );
  }

  Widget _buildButton(_ButtonConfig config) {
    return GestureDetector(
      onTap: config.onTap,
      child: Container(
        padding: EdgeInsets.all(8.w),
        width: config.width,
        height: 150.h,
        decoration: BoxDecoration(
          color: Get.theme.cardTheme.color,
          border: Border.all(color: Get.theme.primaryColor, width: 0.2),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Get.theme.primaryColor.withOpacity(0.2),
              blurRadius: 2,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              config.iconPath,
              height: 70.h,
              width: 70.w,
              fit: BoxFit.contain,
            ),
            Text(config.label, style: Get.theme.textTheme.bodyLarge),
            Text(
              config.subLabel,
              style: Get.theme.textTheme.labelSmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _ButtonConfig {
  final VoidCallback onTap;
  final String iconPath;
  final String label;
  final String subLabel;
  final double width;

  _ButtonConfig({
    required this.onTap,
    required this.iconPath,
    required this.label,
    required this.subLabel,
    required this.width,
  });
}
