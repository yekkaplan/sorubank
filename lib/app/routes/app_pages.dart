import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/home/views/question_solve.dart';
import 'package:getx_skeleton/app/modules/home/views/test_list.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TESTLIST,
      page: () => const TestListPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.QUESTION_SOLVE,
      page: () => const QuestionSolvePage(),
      binding: HomeBinding(),
    ),
  ];
}
