import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../domain/googleauth/google_auth_helper.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/login_controller.dart'; // ignore_for_file: must_be_immutable

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 80.v,
          ),
          child: Column(
            children: [
              _buildLoginColumnIconFox(),
              Spacer(
                flex: 56,
              ),
              CustomOutlinedButton(
                text: "msg_continue_with_google".tr,
                margin: EdgeInsets.symmetric(horizontal: 23.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 30.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle1,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                  ),
                ),
                onPressed: () {
                  onTapContinuewith();
                },
              ),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                text: "msg_continue_with_facebook".tr,
                margin: EdgeInsets.symmetric(horizontal: 23.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 30.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFacebook2,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                  ),
                ),
                onPressed: () {
                  onTapContinuewith1();
                },
              ),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                text: "msg_continue_with_email".tr,
                margin: EdgeInsets.symmetric(horizontal: 23.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 30.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage6,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                  ),
                ),
                onPressed: () {
                  onTapContinuewith2();
                },
              ),
              Spacer(
                flex: 43,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginColumnIconFox() {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgIconFox,
          height: 172.v,
          width: 180.h,
        ),
        SizedBox(height: 12.v),
        Container(
          decoration: AppDecoration.outlineBlack,
          child: Text(
            "lbl_fox".tr,
            style: theme.textTheme.displayLarge,
          ),
        )
      ],
    );
  }

  onTapContinuewith() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapContinuewith1() async {
    await FacebookAuthHelper()
        .facebookSignInProcess()
        .then((facebookUser) {})
        .catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Navigates to the forgetPasswordOneScreen when the action is triggered.
  onTapContinuewith2() {
    Get.toNamed(
      AppRoutes.forgetPasswordOneScreen,
    );
  }
}
