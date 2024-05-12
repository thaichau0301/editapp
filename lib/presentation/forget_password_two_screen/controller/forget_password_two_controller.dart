import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../../core/app_export.dart';
import '../models/forget_password_two_model.dart';

/// A controller class for the ForgetPasswordTwoScreen.
///
/// This class manages the state of the ForgetPasswordTwoScreen, including the
/// current forgetPasswordTwoModelObj
class ForgetPasswordTwoController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<ForgetPasswordTwoModel> forgetPasswordTwoModelObj =
      ForgetPasswordTwoModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
