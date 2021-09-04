import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat_feed_app/config/colors.dart';
import 'package:flutter_firebase_chat_feed_app/shared_widgets/logout_button.dart';
import 'package:flutter_firebase_chat_feed_app/shared_widgets/text_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostFeedScreen extends StatefulWidget {
  const PostFeedScreen({Key? key}) : super(key: key);

  @override
  _PostFeedScreenState createState() => _PostFeedScreenState();
}

class _PostFeedScreenState extends State<PostFeedScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChatTextButton(
                      title: 'Back',
                      textColor: kPrimaryDarkColor,
                      onTap: () {
                        Navigator.of(context).pop();
                      }),
                  LogoutButton(
                    iconColor: kPrimaryDarkColor,
                    icon: Icons.logout,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 30.w),
                height: 50,
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            child: CircleAvatar(
                              child: Text('AB'),
                            ),
                          );
                        }),
                  ],
                ),
              ),
              PostWidget(size: size),
              PostWidget(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: kPrimaryColor.withOpacity(0.6),
            child: Text(
              'JI',
              style: TextStyle(
                color: kPrimaryDarkColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: Text(
            'Javeed Ishaq',
            style: TextStyle(
              color: kPrimaryDarkColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            'ishaqjaveed1@gmail.com',
            style: TextStyle(
                color: Colors.grey[500],
                fontWeight: FontWeight.w400,
                fontSize: 12.sp),
          ),
        ),
        Container(
          width: size.width * 0.8,
          height: 200.w,
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
              child: Text(
            "This is a post made by a user",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: kBgColor,
              fontSize: 18,
            ),
          )),
        ),
        Container(
          width: size.width * 0.8,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/heart-icon.png",
                  color: kPrimaryColor,
                ),
              ),
              Text('55')
            ],
          ),
        ),
      ],
    );
  }
}
