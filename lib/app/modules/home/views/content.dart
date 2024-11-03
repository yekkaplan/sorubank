import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class ContentPage extends GetView<HomeController> {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tüm Testler'),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text('Lütfen Sınav Türünü Seçiniz'),
                DropdownButton<String>(
                  isExpanded: true,
                  value: controller.selectedValue.value,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 2,
                    color: Colors.blueAccent,
                  ),
                  onChanged: (String? newValue) {
                    // Yeni bir değer seçildiğinde controller'daki metodu çağırıyoruz
                    controller.setSelectedValue(newValue!);
                  },
                  items: controller.optionsDropdown
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
