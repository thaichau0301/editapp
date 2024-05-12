import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/user_controller.dart'; // ignore_for_file: must_be_immutable

class UserScreen extends GetWidget<UserController> {
  const UserScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: 390.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopSection(),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "msg_manage_subcription".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 13.v),
              _buildVipCurrentSection(),
              SizedBox(height: 35.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_log_out".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 13.v),
              _buildLogoutSection(),
              SizedBox(height: 33.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_deletion".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 15.v),
              _buildDeleteAccountSection(),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 73.v),
          Padding(
            padding: EdgeInsets.only(right: 105.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBack25x25,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text(
                    "lbl_manage_account".tr,
                    style: CustomTextStyles.titleMediumRoboto,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 105.v),
          CustomElevatedButton(
            height: 52.v,
            text: "lbl_renew_your_plan".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgKing1,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.outlineBlackTL16,
            buttonTextStyle: CustomTextStyles.titleMediumRobotoGray5001,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVipCurrentSection() {
    return Container(
      width: 390.h,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_premium_a_month".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 4.v),
          Text(
            "msg_registration_date".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 2.v),
          Text(
            "msg_expiry_date_19_6_2024".tr,
            style: theme.textTheme.bodySmall,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogoutSection() {
    return GestureDetector(
      onTap: () {
        onTapLogoutSection();
      },
      child: Container(
        width: 390.h,
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            Text(
              "lbl_log_out".tr,
              style: theme.textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDeleteAccountSection() {
    return Container(
      width: 390.h,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Text(
        "lbl_delete_account".tr,
        style: theme.textTheme.titleMedium,
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogoutSection() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
