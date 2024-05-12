import '../../../core/app_export.dart';
import '../controller/user_controller.dart';

/// A binding class for the UserScreen.
///
/// This class ensures that the UserController is created when the
/// UserScreen is first loaded.
class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
  }
}
