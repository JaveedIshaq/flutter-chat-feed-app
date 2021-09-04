import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat_feed_app/config/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageSendButton extends StatelessWidget {
  const MessageSendButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: kPrimaryColor,
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: kBgColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            ),
          ),
          height: 51.h,
          width: 50.w,
          child: Icon(
            Icons.send,
            color: kPrimaryDarkColor,
          ),
        ),
      ),
    );
  }
}
