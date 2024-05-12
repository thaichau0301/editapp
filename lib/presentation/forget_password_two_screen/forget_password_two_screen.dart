import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'controller/forget_password_two_controller.dart'; // ignore_for_file: must_be_immutable

class ForgetPasswordTwoScreen extends GetWidget<ForgetPasswordTwoController> {
  const ForgetPasswordTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: 360.h,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 33.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_enter_a_6_digital".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 9.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_your_code_was_emailed2".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: "msg_ng_0_gmail_com".tr,
                      style: CustomTextStyles.labelLargeInterBlack900,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 33.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.h),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "lbl_next".tr,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 360.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBack,
        margin: EdgeInsets.fromLTRB(16.h, 15.v, 319.h, 15.v),
        onTap: () {
          onTapBackone();
        },
      ),
    );
  }

  /// Navigates to the forgetPasswordOneScreen when the action is triggered.
  onTapBackone() {
    Get.toNamed(
      AppRoutes.forgetPasswordOneScreen,
    );
  }
}
