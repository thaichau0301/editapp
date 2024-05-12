import '../../../core/app_export.dart';
import '../controller/forget_password_two_controller.dart';

/// A binding class for the ForgetPasswordTwoScreen.
///
/// This class ensures that the ForgetPasswordTwoController is created when the
/// ForgetPasswordTwoScreen is first loaded.
class ForgetPasswordTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordTwoController());
  }
}
