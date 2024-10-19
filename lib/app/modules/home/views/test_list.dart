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
                    'KPSS',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  backgroundColor: Colors.grey[100],
                  collapsedBackgroundColor: Colors.grey[200],
                  children: [
                    ListTile(
                      leading: Icon(Icons.book, color: Get.theme.primaryColor),
                      title: Text('Matematik Testleri',
                          style: TextStyle(fontSize: 16.sp)),
                      subtitle: Text('Tüm matematik soruları',
                          style: TextStyle(fontSize: 14.sp)),
                      onTap: () {
                        Get.toNamed(Routes.QUESTION_SOLVE);
                      },
                    ),
                    ListTile(
                      leading:
                          Icon(Icons.language, color: Get.theme.primaryColor),
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
                SizedBox(height: 10.h),
                // LGS Kategorisi
                ExpansionTile(
                  leading: Icon(Icons.school_outlined, color: Colors.orange),
                  title: Text(
                    'LGS',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  backgroundColor: Colors.grey[100],
                  collapsedBackgroundColor: Colors.grey[200],
                  children: [
                    ListTile(
                      leading: Icon(Icons.science, color: Colors.orange),
                      title: Text('Fen Bilimleri Testleri',
                          style: TextStyle(fontSize: 16.sp)),
                      subtitle: Text('Fen ve teknoloji soruları',
                          style: TextStyle(fontSize: 14.sp)),
                      onTap: () {
                        // Fen Bilimleri testlerine git
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.calculate, color: Colors.orange),
                      title: Text('Matematik Testleri',
                          style: TextStyle(fontSize: 16.sp)),
                      subtitle: Text('Problemler ve sayısal işlemler',
                          style: TextStyle(fontSize: 14.sp)),
                      onTap: () {
                        // Matematik testlerine git
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.history_edu, color: Colors.orange),
                      title: Text('İnkılap Tarihi Testleri',
                          style: TextStyle(fontSize: 16.sp)),
                      subtitle: Text('Tarih bilgisi ve yorumlama',
                          style: TextStyle(fontSize: 14.sp)),
                      onTap: () {
                        // İnkılap Tarihi testlerine git
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                // Ehliyet Sınavı Kategorisi
                ExpansionTile(
                  leading: Icon(Icons.directions_car, color: Colors.blue),
                  title: Text(
                    'Ehliyet Sınavı',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  backgroundColor: Colors.grey[100],
                  collapsedBackgroundColor: Colors.grey[200],
                  children: [
                    ListTile(
                      leading: Icon(Icons.traffic, color: Colors.blue),
                      title: Text('Trafik ve Çevre Bilgisi Testleri',
                          style: TextStyle(fontSize: 16.sp)),
                      subtitle: Text('Trafik kuralları ve güvenlik',
                          style: TextStyle(fontSize: 14.sp)),
                      onTap: () {
                        // Trafik ve Çevre Bilgisi testlerine git
                      },
                    ),
                    ListTile(
                      leading:
                          Icon(Icons.health_and_safety, color: Colors.blue),
                      title: Text('İlk Yardım Testleri',
                          style: TextStyle(fontSize: 16.sp)),
                      subtitle: Text('İlk yardım bilgisi ve uygulamaları',
                          style: TextStyle(fontSize: 14.sp)),
                      onTap: () {
                        // İlk Yardım testlerine git
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.build, color: Colors.blue),
                      title: Text('Motor ve Araç Tekniği Testleri',
                          style: TextStyle(fontSize: 16.sp)),
                      subtitle: Text('Araç teknik bilgisi ve bakımı',
                          style: TextStyle(fontSize: 14.sp)),
                      onTap: () {
                        // Motor ve Araç Tekniği testlerine git
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
