import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// mock model
class ContentGridModelMock {
  final String title;
  final String subtitle;
  final String iconPath;
  final Color backgroundColor;
  final Color iconBackgroundColor;

  ContentGridModelMock({
    required this.title,
    required this.subtitle,
    required this.iconPath,
    required this.backgroundColor,
    required this.iconBackgroundColor,
  });
}

class ContentGrid extends StatelessWidget {
  ContentGrid({super.key});

  final List<ContentGridModelMock> data = [
    ContentGridModelMock(
      title: 'KPSS 2023 Soru Çözüm',
      subtitle: 'Türkçe 100 soru',
      iconPath: 'assets/vectors/vocation.svg',
      backgroundColor: const Color(0xFFEEF9FF),
      iconBackgroundColor: const Color(0xFF83A0EC),
    ),
    ContentGridModelMock(
      title: 'KPSS 2024 Soru Çözüm',
      subtitle: 'Matematik 100 Soru',
      iconPath: 'assets/vectors/tasks.svg',
      backgroundColor: const Color(0xFFEEF9FF),
      iconBackgroundColor: const Color.fromARGB(255, 63, 125, 180),
    ),
    ContentGridModelMock(
      title: 'KPSS 2024',
      subtitle: 'Sosyal Bilimler 60 Soru',
      iconPath: 'assets/vectors/vocation.svg',
      backgroundColor: const Color(0xFFEEF9FF),
      iconBackgroundColor: const Color.fromARGB(255, 98, 170, 206),
    ),
    ContentGridModelMock(
      title: 'KPSS 2024',
      subtitle: ' Fen Bilimleri 60 Soru',
      iconPath: 'assets/vectors/vocation.svg',
      backgroundColor: const Color(0xFFEEF9FF),
      iconBackgroundColor: const Color.fromARGB(255, 221, 153, 239),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

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
            color: gridData.backgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 37.h,
                width: 37.h,
                decoration: BoxDecoration(
                  color: gridData.iconBackgroundColor,
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
              Text(gridData.subtitle,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: const Color(0xFF4B4C4D),
                  )),
              Icon(Icons.arrow_forward_outlined)
            ],
          ),
        );
      },
    );
  }
}
