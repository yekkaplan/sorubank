import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

class CustomButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    // Colors for the buttons
    final buttonColors = [
      isDarkMode ? Color(0xFF34495E) : Color(0xFF42A7DE),
      isDarkMode ? Color(0xFF2C3E50) : Color(0xFF009FF5),
      isDarkMode ? Color(0xFF34495E) : Color(0xFFBBF1FA),
      isDarkMode ? Color(0xFF2C3E50) : Color(0xFFEEE8A9),
    ];

    final textColor = isDarkMode ? Colors.white : Colors.black54;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButton(
                onTap: () {
                  Get.toNamed(Routes.CONTENT_PAGE);
                },
                backgroundColor: buttonColors[0],
                iconPath: 'assets/vectors/note.svg',
                label: 'KPSS',
                textColor: textColor,
              ),
              SizedBox(width: 16.w),
              _buildButton(
                onTap: () {
                  Get.toNamed(Routes.TESTLIST);
                },
                backgroundColor: buttonColors[1],
                iconPath: 'assets/vectors/open_note.svg',
                label: 'TYT-AYT',
                textColor: textColor,
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButton(
                onTap: () {
                  // Action for third button
                },
                backgroundColor: buttonColors[2],
                iconPath: 'assets/vectors/car.svg',
                label: 'Ehliyet',
                textColor: textColor,
              ),
              SizedBox(width: 16.w),
              _buildButton(
                onTap: () {
                  Get.toNamed(Routes.TESTLIST);
                },
                backgroundColor: buttonColors[3],
                iconPath: 'assets/vectors/yds.svg',
                label: 'YDS',
                textColor: textColor,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to build buttons
  Widget _buildButton({
    required VoidCallback onTap,
    required Color backgroundColor,
    required String iconPath,
    required String label,
    required Color textColor,
  }) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                backgroundColor.withOpacity(0.4),
                Get.theme.primaryColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                height: 60.h,
                width: 60.w,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 10.h),
              Text(
                label,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
