import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// mock model
class ContentGridModelMock {
  final String title;
  final String subtitle;
  final String exampleType;
  final String subject;
  final String date;

  ContentGridModelMock({
    required this.title,
    required this.subtitle,
    required this.exampleType,
    required this.subject,
    required this.date,
  });
}

class ContentGrid extends StatelessWidget {
  ContentGrid({super.key});

  final List<ContentGridModelMock> data = [
    ContentGridModelMock(
      title: 'KPSS 2023',
      subtitle: 'Türkçe 100 soru',
      exampleType: 'Türkçe',
      subject: 'Fiiller',
      date: '22.04.2024',
    ),
    ContentGridModelMock(
      title: 'KPSS 2024',
      subtitle: 'Matematik 100 Soru',
      exampleType: 'Türkçe',
      subject: 'Üslü Sayılar',
      date: '22.04.2024',
    ),
    ContentGridModelMock(
      title: 'KPSS 2023',
      subtitle: 'Türkçe 100 soru',
      exampleType: 'Türkçe',
      subject: 'Fiiller',
      date: '22.04.2024',
    ),
    ContentGridModelMock(
      title: 'KPSS 2024',
      subtitle: 'Matematik 100 Soru',
      exampleType: 'Türkçe',
      subject: 'Üslü Sayılar',
      date: '22.04.2024',
    ),
    ContentGridModelMock(
      title: 'KPSS 2023',
      subtitle: 'Türkçe 100 soru',
      exampleType: 'Türkçe',
      subject: 'Fiiller',
      date: '22.04.2024',
    ),
    ContentGridModelMock(
      title: 'KPSS 2024',
      subtitle: 'Matematik 100 Soru',
      exampleType: 'Türkçe',
      subject: 'Üslü Sayılar',
      date: '22.04.2024',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    bool isDarkMode = theme.brightness == Brightness.dark;

    return SingleChildScrollView(
      child: Column(
        children: data.map((gridData) {
          return Container(
            padding: EdgeInsets.all(16.h),
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(
              color: Get.theme.cardColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildIconContainer(isDarkMode),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${gridData.title} - ${gridData.subject}',
                            style: Get.theme.textTheme.bodyLarge),
                        SizedBox(height: 4.h),
                        Text(
                          gridData.subtitle,
                          style: Get.theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          '${gridData.exampleType} • ${gridData.date}',
                          style: Get.theme.textTheme.bodySmall,
                        )
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16.w,
                  color: Get.iconColor,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildIconContainer(bool isDarkMode) {
    return Container(
      height: 45.h,
      width: 45.h,
      decoration: BoxDecoration(
        color: Get.theme.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(
        'assets/vectors/tasks.svg',
        height: 24.h,
        width: 24.h,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
