import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat_feed_app/config/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

var headingStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 26.sp);

var messageInputDecoration = InputDecoration(
  filled: true,
  fillColor: kBgColor,
  contentPadding: EdgeInsets.only(left: 10.w, top: 5.h),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: kBgColor,
    ),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.r),
      bottomLeft: Radius.circular(20.r),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: kBgColor,
    ),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.r),
      bottomLeft: Radius.circular(20.r),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: kBgColor,
    ),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.r),
      bottomLeft: Radius.circular(20.r),
    ),
  ),
  hintText: "",
);
