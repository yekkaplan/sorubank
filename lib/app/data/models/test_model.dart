import 'dart:ui';

class DataGridModelMock {
  final String title;
  final String subtitle;
  final String questionCount;
  final String iconPath;
  final Color backgroundColor;
  final Color iconBackgroundColor;

  DataGridModelMock(
      {required this.title,
      required this.subtitle,
      required this.iconPath,
      required this.backgroundColor,
      required this.iconBackgroundColor,
      required this.questionCount});
}
