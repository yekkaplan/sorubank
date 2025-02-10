import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/home/views/home_view.dart';
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
                Text('Lütfen Sınav Türünü Seçiniz',
                    style: Get.textTheme.displayMedium),
                _buildDropdown(controller),
                8.verticalSpace,
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
