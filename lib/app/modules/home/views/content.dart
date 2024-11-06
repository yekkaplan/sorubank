import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/home/views/widgets/content_grid.dart';

import '../controllers/home_controller.dart';

class ContentPage extends GetView<HomeController> {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title:
            Text('Tüm Testler', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lütfen Sınav Türünü Seçiniz',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                ),
                SizedBox(height: 16), // Space between text and dropdown
                _buildDropdown(controller),
                SizedBox(height: 20), // Space between dropdown and content grid
                Expanded(child: ContentGrid()), // Display the content grid
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildDropdown(HomeController controller) {
    return DropdownButton<String>(
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
        if (newValue != null) {
          controller.setSelectedValue(newValue);
        }
      },
      items: controller.optionsDropdown
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
