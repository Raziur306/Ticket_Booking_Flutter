import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
              left: AppLayout.getWidth(20),
              right: AppLayout.getWidth(20),
              top: AppLayout.getWidth(30)),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: AppLayout.getWidth(100),
                    height: AppLayout.getWidth(100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppLayout.getHeight(20))),
                      color: Colors.white,
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img_1.png")),
                    )),
                Gap(AppLayout.getWidth(8)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Book Tickets",
                        style: Styles.headLineStyle1
                            .copyWith(color: Colors.black)),
                    Text(
                      "New-York",
                      style: Styles.headLineStyle4,
                    ),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      padding: EdgeInsets.only(
                          left: AppLayout.getWidth(3),
                          right: AppLayout.getWidth(10),
                          top: AppLayout.getWidth(1),
                          bottom: AppLayout.getWidth(1)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(AppLayout.getHeight(50)))),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(5)),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              Icons.shield,
                              color: Colors.white,
                            ),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          const Text(
                            "Premium Status",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(30)),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(20)),
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppLayout.getHeight(20)))),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(18)),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(AppLayout.getWidth(50))),
                        child: Icon(
                          Icons.lightbulb,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Gap(AppLayout.getWidth(15)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You've got a new award",
                            style: Styles.headLineStyle1
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "You have 150 flights in a year",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: AppLayout.getHeight(-50),
                  right: AppLayout.getHeight(-28),
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.purpleAccent,
                            width: AppLayout.getWidth(15))),
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(30)),
            Text(
              "Accumulated Miles",
              style: Styles.headLineStyle2.copyWith(color: Colors.black),
            ),
            Gap(AppLayout.getHeight(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "156497",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Miles accrued",
                  style: Styles.headLineStyle3,
                ),
                Text(
                  "23 May 2021",
                  style: Styles.headLineStyle3,
                ),
              ],
            ),
            Gap(AppLayout.getHeight(10)),
            const Divider(),
            Gap(AppLayout.getHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "23 045",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
                Text(
                  "Airline CO",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Miles", style: Styles.headLineStyle3),
                Text("Received from", style: Styles.headLineStyle3),
              ],
            ),
            Gap(AppLayout.getHeight(10)),
            const Divider(),
            Gap(AppLayout.getHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "30",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
                Text(
                  "McDonal's",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Miles", style: Styles.headLineStyle3),
                Text("Received from", style: Styles.headLineStyle3),
              ],
            ),
            Gap(AppLayout.getHeight(10)),
            const Divider(),
            Gap(AppLayout.getHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "52 340",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
                Text(
                  "Exuma",
                  style: Styles.headLineStyle3.copyWith(color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Miles", style: Styles.headLineStyle3),
                Text("Received from", style: Styles.headLineStyle3),
              ],
            ),
            Gap(AppLayout.getHeight(30)),
            InkWell(
              onTap: (){
                Fluttertoast.showToast(msg: "More miles", toastLength: Toast.LENGTH_SHORT);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "How to get more miles ?",
                    style: Styles.headLineStyle3
                        .copyWith(color: Colors.deepPurpleAccent),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
