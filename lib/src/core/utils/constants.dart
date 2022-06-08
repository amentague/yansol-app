import 'package:flutter/material.dart';

import 'size_config.dart';

const kPrimaryColor = Color(0xFF304F4F);
const kPrimaryLightColor = Color(0xFF5B7B7B);
const kPrimaryDarkColor = Color(0xFF062727);
const kSecondaryColor = Color(0xFFFFDE03);
const kSecondaryLightColor = Color(0xFFFFFF54);
const kSecondaryDarkColor = Color(0xFFC7AD00);
const kAccentColor = Color(0xFF64FFDA);
const kAccentLightColor = Color(0xFF9EFFFF);
const kAccentDarkColor = Color(0xFF14CBA8);
const kBlueColor = Color(0xFF0336FF);
const kBlueLightColor = Color(0xFF6F63FF);
const kBlueDarkColor = Color(0xFF0008CA);
const kPinkColor = Color(0xFFFF0266);
const kPinkLightColor = Color(0xFFFF5C93);
const kPinkDarkColor = Color(0xFFC5003C);
const kBgColor = Color(0xFF00363A);
const kLogoColor = Color(0xFFFF6347);
const kPrimaryTextColor = Color(0xFFFFFFFF);
const kSecondaryTextColor = Color(0xFFD5D5D5);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF304F4F), Color(0xFF004D40)],
);
const defaultPadding = 16.0;
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);
//! Database

const String kStaffBox = 'staff';
const String kCustomerBox = 'customers';
const String kPermissionBox = 'permissions';
const String kRoleBox = 'roles';
const String kStationBox = 'stations';
const String kPaymentMethodBox = 'payment_method';
const String kCashOutBox = 'cash_out';
const String kCashDeskBox = 'cash_desk';
const String kIngredientBox = 'ingredients';
const String kFoodCostBox = 'food_costs';
const String kFoodSheetBox = 'food_sheets';
const String kOptionBox = 'options';
const String kFoodBox = 'foods';
const String kCategoryBox = 'categories';
const String kOrderKindBox = 'order_kind';
const String korderStatusBox = 'order_status';
const String kCartStatusBox = 'cart_status';
const String kStarterMainDessertBox = 'starters_mains_desseerts';
const String kSelectedOptionBox = 'selected_options';
const String kOrderLineBox = 'order_lines';
const String kOrderBox = 'orders';
const String kCartBox = 'carts';
const String kCurrentUser = 'current_user';

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kSecondaryTextColor),
  );
}
