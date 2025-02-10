import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DataGridModelMock {
  final String title;
  final String subtitle;
  final String iconPath;
  final Color lightModeIconBackgroundColor;
  final Color darkModeIconBackgroundColor;

  DataGridModelMock({
    required this.title,
    required this.subtitle,
    required this.iconPath,
    required this.lightModeIconBackgroundColor,
    required this.darkModeIconBackgroundColor,
  });
}

class DataGrid extends StatelessWidget {
  DataGrid({super.key});

  final List<DataGridModelMock> data = [
    DataGridModelMock(
      title: 'KPSS 2023 Soru Çözüm',
      subtitle: '100 soru',
      iconPath: 'assets/vectors/vocation.svg',
      lightModeIconBackgroundColor: const Color(0xFF83A0EC),
      darkModeIconBackgroundColor: const Color(0xFF4B6A9B),
    ),
    DataGridModelMock(
      title: 'KPSS 2024 Soru Çözüm',
      subtitle: '60 Soru',
      iconPath: 'assets/vectors/tasks.svg',
      lightModeIconBackgroundColor: const Color.fromARGB(255, 63, 125, 180),
      darkModeIconBackgroundColor: const Color.fromARGB(255, 42, 84, 120),
    ),
    DataGridModelMock(
      title: 'Ehliyet Soru Çözüm',
      subtitle: '60 Soru',
      iconPath: 'assets/vectors/vocation.svg',
      lightModeIconBackgroundColor: const Color.fromARGB(255, 98, 170, 206),
      darkModeIconBackgroundColor: const Color.fromARGB(255, 58, 102, 128),
    ),
    DataGridModelMock(
      title: 'Yabancı Dil Sınavları',
      subtitle: '60 Soru',
      iconPath: 'assets/vectors/vocation.svg',
      lightModeIconBackgroundColor: const Color.fromARGB(255, 221, 153, 239),
      darkModeIconBackgroundColor: const Color.fromARGB(255, 150, 104, 162),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var isDarkMode = theme.brightness == Brightness.dark;

    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 11.w,
        mainAxisSpacing: 10.h,
        mainAxisExtent: 80.h,
      ),
      itemBuilder: (ctx, index) {
        var gridData = data[index];
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: Get.theme.cardColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF000000).withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 37.h,
                width: 37.h,
                decoration: BoxDecoration(
                  color: isDarkMode
                      ? gridData.darkModeIconBackgroundColor
                      : gridData.lightModeIconBackgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(
                  gridData.iconPath,
                  height: 19.h,
                  fit: BoxFit.none,
                ),
              ),
              8.verticalSpace,
              Text(
                gridData.title,
                style: theme.textTheme.bodySmall,
              ),
              7.verticalSpace,
              Text(gridData.subtitle, style: theme.textTheme.bodyMedium),
              Icon(Icons.arrow_forward_outlined)
            ],
          ),
        );
      },
    );
  }
}
