import 'notifier/iphone_14_15_pro_max_nine_notifier.dart';
import 'package:flutter/material.dart';
import 'package:food_truck_frontend/core/app_export.dart';
import 'package:food_truck_frontend/widgets/app_bar/appbar_leading_image.dart';
import 'package:food_truck_frontend/widgets/app_bar/appbar_title.dart';
import 'package:food_truck_frontend/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:food_truck_frontend/widgets/app_bar/custom_app_bar.dart';
import 'package:food_truck_frontend/widgets/custom_elevated_button.dart';
import 'package:food_truck_frontend/widgets/custom_icon_button.dart';

class Iphone1415ProMaxNineScreen extends ConsumerStatefulWidget {
  const Iphone1415ProMaxNineScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxNineScreenState createState() =>
      Iphone1415ProMaxNineScreenState();
}

class Iphone1415ProMaxNineScreenState
    extends ConsumerState<Iphone1415ProMaxNineScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              _buildStackOne(context),
              SizedBox(height: 41.v),
              _buildStackTwo(context),
              SizedBox(height: 42.v),
              _buildStackThree(context),
              SizedBox(height: 33.v),
              Divider(),
              SizedBox(height: 38.v),
              _buildRowOne(
                context,
                discountText: "lbl_total".tr,
                priceText: "lbl_21_96".tr,
              ),
              SizedBox(height: 8.v),
              _buildRowOne(
                context,
                discountText: "lbl_discounts".tr,
                priceText: "lbl_0_00".tr,
              ),
              SizedBox(height: 10.v),
              _buildRowOne(
                context,
                discountText: "lbl_card".tr,
                priceText: "lbl_456".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildButtonOne(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBack2,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 9.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_my_cart".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgMenu1,
          margin: EdgeInsets.fromLTRB(20.h, 9.v, 20.h, 16.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStackOne(BuildContext context) {
    return SizedBox(
      height: 150.v,
      width: 390.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage7150x144,
            height: 150.v,
            width: 144.h,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 1.h),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 6.v),
            child: _buildColumnOne(
              context,
              title: "lbl_prawn_mix_salad".tr,
              subtitle: "lbl_seafood".tr,
              priceText: "lbl_5_98".tr,
              quantityText: "lbl_x1".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackTwo(BuildContext context) {
    return SizedBox(
      height: 140.v,
      width: 390.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: _buildColumnOne(
              context,
              title: "lbl_bbq_chicken2".tr,
              subtitle: "lbl_bbq".tr,
              priceText: "lbl_11_98".tr,
              quantityText: "lbl_x1".tr,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage3140x146,
            height: 140.v,
            width: 146.h,
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackThree(BuildContext context) {
    return SizedBox(
      height: 150.v,
      width: 390.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          _buildColumnOne(
            context,
            title: "msg_prawn_yellow_rice".tr,
            subtitle: "lbl_seafood".tr,
            priceText: "lbl_7_98".tr,
            quantityText: "lbl_x1".tr,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage6,
            height: 150.v,
            width: 154.h,
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonOne(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_checkout".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 39.v,
      ),
    );
  }

  /// Common widget
  Widget _buildColumnOne(
    BuildContext context, {
    required String title,
    required String subtitle,
    required String priceText,
    required String quantityText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: theme.textTheme.titleLarge!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgDelete,
                height: 25.adaptSize,
                width: 25.adaptSize,
                margin: EdgeInsets.only(left: 73.h),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 155.h),
              child: Text(
                subtitle,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.colorScheme.onError,
                ),
              ),
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(left: 155.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  priceText,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: CustomIconButton(
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgAdd,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    top: 9.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    quantityText,
                    style: theme.textTheme.labelMedium!.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                  child: CustomIconButton(
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMinus,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowOne(
    BuildContext context, {
    required String discountText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          discountText,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.titleLargePrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
