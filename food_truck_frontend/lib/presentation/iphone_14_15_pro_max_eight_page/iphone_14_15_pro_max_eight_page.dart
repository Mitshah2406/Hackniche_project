import 'package:food_truck_frontend/models/menuitem.dart';
import 'package:food_truck_frontend/presentation/item_details_screen/item_details_screen.dart';
import 'package:food_truck_frontend/providers/data_providers.dart';

import 'notifier/iphone_14_15_pro_max_eight_notifier.dart';
import 'package:flutter/material.dart';
import 'package:food_truck_frontend/core/app_export.dart';
import 'package:food_truck_frontend/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:food_truck_frontend/widgets/app_bar/appbar_subtitle.dart';
import 'package:food_truck_frontend/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:food_truck_frontend/widgets/app_bar/appbar_trailing_image.dart';
import 'package:food_truck_frontend/widgets/app_bar/custom_app_bar.dart';
import 'package:food_truck_frontend/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxEightPage extends ConsumerStatefulWidget {
  const Iphone1415ProMaxEightPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxEightPageState createState() =>
      Iphone1415ProMaxEightPageState();
}

class Iphone1415ProMaxEightPageState
    extends ConsumerState<Iphone1415ProMaxEightPage> {
  @override
  Widget build(BuildContext context) {
    final menudata = ref.watch(menuDataProvider);
    List<MenuItem> menuList = [];
    menudata.when(
      data: (data) {
        menuList = data.map((e) => (e)).toList();
        print(menuList);
      },
      loading: () {
        print("loading");
      },
      error: (error, stack) {
        print(error);
      },
    );

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Consumer(
                    builder: (context, ref, _) {
                      return CustomSearchView(
                        controller: ref
                            .watch(iphone1415ProMaxEightNotifier)
                            .searchController,
                        hintText: "msg_search_your_interesting".tr,
                      );
                    },
                  ),
                ),
                SizedBox(height: 21.v),
                _buildSpecialOffers(context),
                SizedBox(height: 18.v),
                _buildFeaturedItems(context),
                SizedBox(height: 30.v),
                _buildFoodCategories(context),
                SizedBox(height: 45.v),
                _buildDrinkCategories(context),
                SizedBox(height: 21.v),
                _buildPromoSection(context, menuList),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 70.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgImage8,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
          bottom: 4.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "lbl_customer".tr,
              margin: EdgeInsets.only(
                left: 4.h,
                right: 71.h,
              ),
            ),
            SizedBox(height: 6.v),
            AppbarSubtitle(
              text: "lbl_john_k_square".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          onTap: () {},
          imagePath: ImageConstant.imgFavorite,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 32.v,
            right: 8.h,
          ),
        ),
        AppbarTrailingImage(
          onTap: () {},
          imagePath: ImageConstant.imgBell1,
          margin: EdgeInsets.fromLTRB(103.h, 10.v, 8.h, 7.v),
        ),
        AppbarTrailingImage(
          onTap: () {},
          imagePath: ImageConstant.imgSearchInterfaceSymbol,
          margin: EdgeInsets.fromLTRB(20.h, 10.v, 28.h, 7.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSpecialOffers(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_special_offers".tr,
            style: theme.textTheme.titleMedium,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl_see_more".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFeaturedItems(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.greenA200,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder47,
      ),
      child: Container(
        height: 193.v,
        width: 390.h,
        decoration: AppDecoration.fillGreenA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder47,
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle15,
              height: 173.v,
              width: 216.h,
              radius: BorderRadius.circular(
                21.h,
              ),
              alignment: Alignment.bottomLeft,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  top: 2.v,
                  bottom: 8.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_302".tr,
                                style: CustomTextStyles.poppinsffffffffBlack,
                              ),
                              TextSpan(
                                text: "lbl".tr,
                                style: CustomTextStyles.poppinsffffffff,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          width: 159,
                          child: Text(
                            "msg_off_from_veg_burger".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                            ),
                            // style: CustomTextStyles
                            //     .headlineLargeInterWhiteA700_1
                            //     .copyWith(
                            //   height: 1.07,
                            // ),
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: 168.adaptSize,
                      width: 168.adaptSize,
                      margin: EdgeInsets.only(
                        top: 6.v,
                        bottom: 7.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodCategories(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgHamburger1,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              "lbl_burger".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
        Spacer(
          flex: 38,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgPizza,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                "lbl_pizza".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Spacer(
          flex: 34,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Column(
            children: [
              Container(
                height: 40.adaptSize,
                width: 40.adaptSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgInstantNoodles,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                "lbl_noodles".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Spacer(
          flex: 26,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.only(right: 5.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgChicken,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                "lbl_chicken".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDrinkCategories(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40.adaptSize,
                width: 40.adaptSize,
                margin: EdgeInsets.only(left: 5.h),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgVegetarian,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                "lbl_vegetar".tr,
                style: CustomTextStyles.bodyMedium14,
              ),
            ],
          ),
          Spacer(
            flex: 29,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgStrawberryCake,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                "lbl_cake".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          Spacer(
            flex: 38,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40.adaptSize,
                width: 40.adaptSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgBeer,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                "lbl_beer".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          Spacer(
            flex: 33,
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgMelonpan,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                "lbl_others".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPromoSection(BuildContext context, List<MenuItem> menuData) {
    return SizedBox(
      height: 257.v,
      width: 396.h,
      child: GestureDetector(
        onTap: () {
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => ItemDetailsPage()));
        },
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 2.h,
                  bottom: 230.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_weekly_special".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Text(
                        "lbl_see_all".tr,
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              // onTap: () {
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) =>
              //           ItemDetailsPage(menuItem: menuData[0])));
              // },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 70.v,
                  right: 217.h,
                ),
                child: _buildFour(
                  context,
                  title: menuData[0].itemName!,
                  price: menuData[0].price.toString(),
                ),
              ),
            ),
            GestureDetector(
              // onTap: () {
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) =>
              //           ItemDetailsPage(menuItem: menuData[1])));
              // },
              child: Padding(
                padding: EdgeInsets.only(
                  left: 219.h,
                  top: 70.v,
                  right: 2.h,
                ),
                child: _buildFour(
                  context,
                  title: menuData[1].itemName!,
                  price: menuData[1].price.toString(),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        ItemDetailsPage(menuItem: menuData[0]),
                  ),
                );
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgImage7,
                height: 137.v,
                width: 132.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 18.h,
                  top: 25.v,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ItemDetailsPage(menuItem: menuData[1])));
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgImage3,
                height: 137.adaptSize,
                width: 137.adaptSize,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 25.v,
                  right: 21.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFour(
    BuildContext context, {
    required String title,
    required String price,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 74.h,
            margin: EdgeInsets.only(top: 104.v),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumErrorContainer.copyWith(
                color: theme.colorScheme.errorContainer.withOpacity(1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 130.v,
            ),
            child: Text(
              price,
              style: CustomTextStyles.titleMediumPrimary.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
