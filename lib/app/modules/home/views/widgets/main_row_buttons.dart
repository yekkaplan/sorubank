import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

class CustomButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme
        .of(context)
        .brightness == Brightness.dark;
    final buttonBackgroundColor =
    isDarkMode ? Colors.grey.shade800 : Colors.amber.shade100;
    final secondButtonBackgroundColor =
    isDarkMode ? Colors.grey.shade700 : Colors.blue.shade100;
    final textColor = isDarkMode ? Colors.white : Colors.black87;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                // Butona tıklama işlemi
              },
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: buttonBackgroundColor,
                  borderRadius:
                  BorderRadius.circular(16), // Daha yuvarlak köşeler
                  boxShadow: [
                    if (!isDarkMode) // Dark modda gölge kullanılmaz
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0, 4), // Gölge efekti
                      ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/vectors/note.svg',
                      height: 80.h,
                      width: 80.w,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 12.h), // Görsel ve metin arasındaki boşluk
                    Text(
                      'Konu Anlatımları',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 16.w), // İki buton arasındaki boşluk artırıldı
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.TESTLIST);
              },
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: secondButtonBackgroundColor,
                  borderRadius:
                  BorderRadius.circular(16), // Daha yuvarlak köşeler
                  boxShadow: [
                    if (!isDarkMode) // Dark modda gölge kullanılmaz
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(0, 4), // Gölge efekti
                      ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/vectors/open_note.svg',
                      height: 80.h,
                      width: 80.w,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 12), // Görsel ve metin arasındaki boşluk
                    Text(
                      'Soru Çözümleri',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
