import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/forget_password_one_model.dart';

/// A controller class for the ForgetPasswordOneScreen.
///
/// This class manages the state of the ForgetPasswordOneScreen, including the
/// current forgetPasswordOneModelObj
class ForgetPasswordOneController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgetPasswordOneModel> forgetPasswordOneModelObj =
      ForgetPasswordOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
