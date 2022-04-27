import 'package:chat_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> myList = [
      {"name": "Mr Jonson", "time": "", "description": ""},
      {"name": "Mr Jonson", "time": "", "description": ""},
      {"name": "Mr Jonson", "time": "", "description": ""}
    ];

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Messages',
          style: TextStyle(
            color: ColorConstants.primaryTextColor.withOpacity(0.9),
            fontSize: 18.sp,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Text(
                            'Mar 15, 2020',
                            style: TextStyle(
                              color: ColorConstants.primaryTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                       // SizedBox(height: 2.h,),
                        Divider(color: ColorConstants.buttonPrimaryColor.withOpacity(.5)),
                         Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage("assets/images/image2.png",),
                                height: 10.h,
                                width: 15.w,
                              ),
                              SizedBox(width: 2.w,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   Text("${myList[index]["name"]}",style: TextStyle(color: ColorConstants.primaryTextColor,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 1.h,),
                                    Text('03.19 PM',style: TextStyle(color: ColorConstants.primaryTextColor.withOpacity(0.6),fontSize: 12.sp, fontWeight: FontWeight.w400),),
                                    SizedBox(height: 1.h,),
                                    Padding(padding: EdgeInsets.only(right: 5.w), child: Text('Your recommended medication was ideal for my situ ',style: TextStyle(color: ColorConstants.primaryTextColor.withOpacity(0.6),fontSize: 12.sp, fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis),),

                                    //Text('Your recommended medication was ideal for my situ',style: TextStyle(color: ColorConstants.primaryTextColor.withOpacity(0.6),fontSize: 12.sp, fontWeight: FontWeight.w400),),


                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}
