import 'package:get/get.dart';

import '../../../../utils/constants.dart';
import '../../../services/api_call_status.dart';
import '../../../services/base_client.dart';

class HomeController extends GetxController {

  var options = ['A) Seçenekk 1', 'B) Seçenek 2', 'C) Seçenek 3', 'D) Seçenek 4'].obs;
  var selectedOption = ''.obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }

  var searchValue = ''.obs;

  // hold data coming from api
  List<dynamic>? data;

  // api call status
  ApiCallStatus apiCallStatus = ApiCallStatus.holding;

  // getting data from api
  getData() async {
    // *) perform api call
    await BaseClient.safeApiCall(
      Constants.todosApiUrl, // url
      RequestType.get, // request type (get,post,delete,put)
      onLoading: () {
        // *) indicate loading state
        apiCallStatus = ApiCallStatus.loading;
        update();
      },
      onSuccess: (response) {
        // api done successfully
        data = List.from(response.data);
        // *) indicate success state
        apiCallStatus = ApiCallStatus.success;
        update();
      },
      // if you don't pass this method base client
      // will automaticly handle error and show message to user
      onError: (error) {
        // show error message to user
        BaseClient.handleApiError(error);
        // *) indicate error status
        apiCallStatus = ApiCallStatus.error;
        update();
      },
    );
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
