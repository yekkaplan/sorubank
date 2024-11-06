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
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
            child: Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: isDarkMode ? Colors.grey[800] : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
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
                          Text(
                            '${gridData.title} - ${gridData.subject}',
                            style: theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: isDarkMode ? Colors.white : Colors.black87,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            gridData.subtitle,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: isDarkMode
                                  ? Colors.white70
                                  : Colors.grey[800],
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            '${gridData.exampleType} • ${gridData.date}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: isDarkMode
                                  ? Colors.white60
                                  : Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: isDarkMode ? Colors.white70 : Colors.grey[600],
                    size: 20.w,
                  ),
                ],
              ),
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
