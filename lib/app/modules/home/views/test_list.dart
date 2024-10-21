import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class TestListPage extends GetView<HomeController> {
  const TestListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Kategorileri'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sınav Kategorileri',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(height: 16.h),
                // KPSS Kategorisi
                ExpansionTile(
                  leading:
                      Icon(Icons.school, color: Theme.of(context).primaryColor),
                  title: Text(
                    'LİSANS KPSS',
                    style: Get.theme.textTheme.headlineMedium,
                  ),
                  backgroundColor: Colors.grey[100],
                  collapsedBackgroundColor: Colors.grey[200],
                  children: [
                    ExpansionTile(
                      leading: Icon(
                        Icons.arrow_forward_ios,
                        color: Get.theme.primaryColor,
                      ),
                      title: Text(
                        'Türkçe',
                        style: Get.theme.textTheme.bodyLarge,
                      ),
                      children: [
                        ListTile(
                          leading: Icon(Icons.language,
                              color: Get.theme.primaryColor),
                          title: Text('Türkçe Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Dil bilgisi ve anlam bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            Get.toNamed(Routes.QUESTION_SOLVE);
                          },
                        ),
                        ListTile(
                          leading:
                              Icon(Icons.public, color: Get.theme.primaryColor),
                          title: Text('Genel Kültür Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Güncel olaylar ve tarih bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            // Genel Kültür testlerine git
                          },
                        ),
                      ],
                    ),
                    ExpansionTile(
                      leading: Icon(
                        Icons.arrow_forward_ios,
                        color: Get.theme.primaryColor,
                      ),
                      title: Text(
                        'Matematik',
                        style: Get.theme.textTheme.bodyLarge,
                      ),
                      children: [
                        ListTile(
                          leading: Icon(Icons.language,
                              color: Get.theme.primaryColor),
                          title: Text('Türkçe Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Dil bilgisi ve anlam bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            Get.toNamed(Routes.QUESTION_SOLVE);
                          },
                        ),
                        ListTile(
                          leading:
                              Icon(Icons.public, color: Get.theme.primaryColor),
                          title: Text('Genel Kültür Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Güncel olaylar ve tarih bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            // Genel Kültür testlerine git
                          },
                        ),
                      ],
                    )
                  ],
                ),

                ExpansionTile(
                  leading:
                      Icon(Icons.school, color: Theme.of(context).primaryColor),
                  title: Text(
                    'Orta Öğretim KPSS',
                    style: Get.theme.textTheme.headlineMedium,
                  ),
                  backgroundColor: Colors.grey[100],
                  collapsedBackgroundColor: Colors.grey[200],
                  children: [
                    ExpansionTile(
                      leading: Icon(
                        Icons.arrow_forward_ios,
                        color: Get.theme.primaryColor,
                      ),
                      title: Text(
                        'Türkçe',
                        style: Get.theme.textTheme.bodyLarge,
                      ),
                      children: [
                        ListTile(
                          leading: Icon(Icons.language,
                              color: Get.theme.primaryColor),
                          title: Text('Türkçe Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Dil bilgisi ve anlam bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            Get.toNamed(Routes.QUESTION_SOLVE);
                          },
                        ),
                        ListTile(
                          leading:
                              Icon(Icons.public, color: Get.theme.primaryColor),
                          title: Text('Genel Kültür Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Güncel olaylar ve tarih bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            // Genel Kültür testlerine git
                          },
                        ),
                      ],
                    ),
                    ExpansionTile(
                      leading: Icon(
                        Icons.arrow_forward_ios,
                        color: Get.theme.primaryColor,
                      ),
                      title: Text(
                        'Matematik',
                        style: Get.theme.textTheme.bodyLarge,
                      ),
                      children: [
                        ListTile(
                          leading: Icon(Icons.language,
                              color: Get.theme.primaryColor),
                          title: Text('Türkçe Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Dil bilgisi ve anlam bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            Get.toNamed(Routes.QUESTION_SOLVE);
                          },
                        ),
                        ListTile(
                          leading:
                              Icon(Icons.public, color: Get.theme.primaryColor),
                          title: Text('Genel Kültür Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Güncel olaylar ve tarih bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            // Genel Kültür testlerine git
                          },
                        ),
                      ],
                    )
                  ],
                ),
                ExpansionTile(
                  leading:
                      Icon(Icons.school, color: Theme.of(context).primaryColor),
                  title: Text(
                    'LİSE TYT AYT',
                    style: Get.theme.textTheme.headlineMedium,
                  ),
                  backgroundColor: Colors.grey[100],
                  collapsedBackgroundColor: Colors.grey[200],
                  children: [
                    ExpansionTile(
                      leading: Icon(
                        Icons.arrow_forward_ios,
                        color: Get.theme.primaryColor,
                      ),
                      title: Text(
                        'Türkçe',
                        style: Get.theme.textTheme.bodyLarge,
                      ),
                      children: [
                        ListTile(
                          leading: Icon(Icons.language,
                              color: Get.theme.primaryColor),
                          title: Text('Türkçe Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Dil bilgisi ve anlam bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            Get.toNamed(Routes.QUESTION_SOLVE);
                          },
                        ),
                        ListTile(
                          leading:
                              Icon(Icons.public, color: Get.theme.primaryColor),
                          title: Text('Genel Kültür Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Güncel olaylar ve tarih bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            // Genel Kültür testlerine git
                          },
                        ),
                      ],
                    ),
                    ExpansionTile(
                      leading: Icon(
                        Icons.arrow_forward_ios,
                        color: Get.theme.primaryColor,
                      ),
                      title: Text(
                        'Matematik',
                        style: Get.theme.textTheme.bodyLarge,
                      ),
                      children: [
                        ListTile(
                          leading: Icon(Icons.language,
                              color: Get.theme.primaryColor),
                          title: Text('Türkçe Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Dil bilgisi ve anlam bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            Get.toNamed(Routes.QUESTION_SOLVE);
                          },
                        ),
                        ListTile(
                          leading:
                              Icon(Icons.public, color: Get.theme.primaryColor),
                          title: Text('Genel Kültür Testleri',
                              style: TextStyle(fontSize: 16.sp)),
                          subtitle: Text('Güncel olaylar ve tarih bilgisi',
                              style: TextStyle(fontSize: 14.sp)),
                          onTap: () {
                            // Genel Kültür testlerine git
                          },
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
