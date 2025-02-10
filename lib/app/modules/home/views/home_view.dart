import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/home/views/widgets/main_row_buttons.dart';

import '../../../../config/translations/strings_enum.dart';
import '../../../components/api_error_widget.dart';
import '../../../components/my_widgets_animator.dart';
import '../controllers/home_controller.dart';
import 'widgets/examples_grid.dart';
import 'widgets/header.dart';
import 'widgets/lecture_list.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          GetBuilder<HomeController>(builder: (_) {
            var theme = Theme.of(context);
            return Expanded(
              child: MyWidgetsAnimator(
                apiCallStatus: controller.apiCallStatus,
                loadingWidget: () => const Center(
                  child: CupertinoActivityIndicator(),
                ),
                errorWidget: () => ApiErrorWidget(
                  message: Strings.internetError.tr,
                  retryAction: () => controller.getData(),
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                ),
                successWidget: () => SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomButtonRow(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Son Eklenen Testler',
                              style: theme.textTheme.displaySmall,
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  'Hepsini Göster',
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontSize: 12.sp,
                                  ),
                                ),
                                Icon(Icons.arrow_right_sharp)
                              ],
                            ),
                          ],
                        ),
                      ),
                      8.verticalSpace,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: DataGrid(),
                      ),
                      8.verticalSpace,
                      EmployeesList(),
                    ],
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
