import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:sizer/sizer.dart';

import 'message.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 15.h,),
            Center(child: Text('Welcome to BLESS',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500,color: ColorConstants.primaryTextColor),)),
            SizedBox(height: 4.h,),
            Image(image: AssetImage("assets/images/image2.png"),height: 40.h,),
            SizedBox(height: 8.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MessageScreen()  ));
                },
                child: Container(
                  height: 7.h,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    color: ColorConstants.buttonPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        Text('See Messages',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),),
                        SizedBox(width: 8.w,),
                        Icon(
                         Icons.arrow_forward,
                          color: Colors.white,
                          size: 20.sp,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )

          ],
        )
      ),
    );
  }
}
