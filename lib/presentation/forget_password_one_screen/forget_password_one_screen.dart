import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/forget_password_one_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ForgetPasswordOneScreen extends GetWidget<ForgetPasswordOneController> {
  ForgetPasswordOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: 360.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 42.v,
                ),
                child: Column(
                  children: [
                    Text(
                      "msg_what_s_your_email".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "msg_we_ll_email_you".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 25.v),
                    CustomTextFormField(
                      controller: controller.emailController,
                      hintText: "lbl_user_domain_com".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCancel1,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 40.v,
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.v),
                    CustomElevatedButton(
                      text: "lbl_send_code".tr,
                      onPressed: () {
                        onTapSendcode();
                      },
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
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
        imagePath: ImageConstant.imgClose,
        margin: EdgeInsets.fromLTRB(16.h, 15.v, 319.h, 15.v),
        onTap: () {
          onTapCloseone();
        },
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapCloseone() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the forgetPasswordTwoScreen when the action is triggered.
  onTapSendcode() {
    Get.toNamed(
      AppRoutes.forgetPasswordTwoScreen,
    );
  }
}
