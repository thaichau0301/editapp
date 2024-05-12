import '../../../core/app_export.dart';
import '../models/user_model.dart';

/// A controller class for the UserScreen.
///
/// This class manages the state of the UserScreen, including the
/// current userModelObj
class UserController extends GetxController {
  Rx<UserModel> userModelObj = UserModel().obs;
}
