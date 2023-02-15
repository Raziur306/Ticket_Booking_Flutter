import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/circle_shape.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets",
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getHeight(35))),
            Gap(AppLayout.getHeight(40)),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppLayout.getHeight(50))),
                  color: const Color(0xFFF4F6FD)),
              child: Row(
                children: [
                  Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(17)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          "Upcoming",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black),
                        ),
                      )),
                  Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(17)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppLayout.getHeight(50))),
                      ),
                      child: Center(
                        child: Text(
                          "Previous",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.grey),
                        ),
                      ))
                ],
              ),
            ),

            Gap(AppLayout.getHeight(18)),
            //tickets-----------------

            Container(
                margin: EdgeInsets.all(AppLayout.getHeight(10)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(AppLayout.getHeight(20)))),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(15)),
                          child: Row(
                            children: [
                              Text("NYC",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              const Spacer(),
                              RoundShape(
                                shapeColor: Colors.blue,
                              ),
                              Expanded(
                                  child: Stack(
                                children: [
                                  SizedBox(
                                    height: AppLayout.getHeight(24),
                                    child: LayoutBuilder(
                                      builder: (BuildContext buildContext,
                                          BoxConstraints boxConstrains) {
                                        return Flex(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          direction: Axis.horizontal,
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              (boxConstrains.constrainWidth() /
                                                      6)
                                                  .floor(),
                                              (index) => SizedBox(
                                                    height:
                                                        AppLayout.getHeight(1),
                                                    width:
                                                        AppLayout.getWidth(3),
                                                    child: const DecoratedBox(
                                                      decoration: BoxDecoration(
                                                          color: Colors.blue),
                                                    ),
                                                  )),
                                        );
                                      },
                                    ),
                                  ),
                                  Transform.rotate(
                                      angle: 1.5,
                                      child: const Center(
                                          child: Icon(
                                        Icons.local_airport_rounded,
                                        color: Colors.blue,
                                      ))),
                                ],
                              )),
                              RoundShape(
                                shapeColor: Colors.blue,
                              ),
                              const Spacer(),
                              Text("LND", style: Styles.textStyle),
                            ],
                          ),
                        ),
                        const Gap(3),
                        Container(
                          padding: EdgeInsets.only(
                              left: AppLayout.getHeight(16),
                              right: AppLayout.getHeight(16)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("New-York", style: Styles.headLineStyle4),
                              Text("8H 30M", style: Styles.headLineStyle4),
                              Text("London", style: Styles.headLineStyle4),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(21),
                              bottomRight: Radius.circular(21))),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: AppLayout.getHeight(20),
                                width: AppLayout.getWidth(10),
                                child: const DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                ),
                              ),
                              Expanded(
                                child: LayoutBuilder(
                                  builder: (BuildContext buildContext,
                                      BoxConstraints boxConstraints) {
                                    return Flex(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        direction: Axis.horizontal,
                                        children: List.generate(
                                            (boxConstraints.constrainWidth() /
                                                    15)
                                                .floor(),
                                            (index) => const SizedBox(
                                                width: 5,
                                                height: 1,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: Colors.black),
                                                ))));
                                  },
                                ),
                              ),
                              SizedBox(
                                height: AppLayout.getHeight(20),
                                width: AppLayout.getWidth(10),
                                child: const DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10))),
                                ),
                              )
                            ],
                          ),
                          const Gap(10),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, bottom: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("1 MAY",
                                        style: Styles.headLineStyle3
                                            .copyWith(color: Colors.black)),
                                    Text("Date", style: Styles.headLineStyle4)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("08:00 AM",
                                        style: Styles.headLineStyle3
                                            .copyWith(color: Colors.black)),
                                    Text("Departure Time",
                                        style: Styles.headLineStyle4)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("23",
                                        style: Styles.headLineStyle3
                                            .copyWith(color: Colors.black)),
                                    Text("Number", style: Styles.headLineStyle4)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: AppLayout.getHeight(1.5),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: AppLayout.getHeight(16),
                          right: AppLayout.getHeight(16),
                          top: AppLayout.getHeight(8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Raziur Rahama",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              Gap(AppLayout.getHeight(5)),
                              Text("Passenger", style: Styles.headLineStyle3)
                            ],
                          ),
                          Column(
                            children: [
                              Text("89XXX85XX",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              Gap(AppLayout.getHeight(5)),
                              Text("Passport", style: Styles.headLineStyle3)
                            ],
                          )
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(5)),
                    SizedBox(
                      child: Expanded(
                        child: SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext buildContext,
                                BoxConstraints boxConstrains) {
                              return Flex(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                direction: Axis.horizontal,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (boxConstrains.constrainWidth() / 6)
                                        .floor(),
                                    (index) => SizedBox(
                                          height: AppLayout.getHeight(1),
                                          width: AppLayout.getWidth(3),
                                          child: const DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.blue),
                                          ),
                                        )),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: AppLayout.getHeight(16),
                          right: AppLayout.getHeight(16),
                          top: AppLayout.getHeight(8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("789 8975 98756",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              Gap(AppLayout.getHeight(5)),
                              Text("Number of E-Ticket",
                                  style: Styles.headLineStyle3)
                            ],
                          ),
                          Column(
                            children: [
                              Text("R12M02Y00",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              Gap(AppLayout.getHeight(5)),
                              Text("Booking Code", style: Styles.headLineStyle3)
                            ],
                          )
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(5)),
                    SizedBox(
                      child: Expanded(
                        child: SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext buildContext,
                                BoxConstraints boxConstrains) {
                              return Flex(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                direction: Axis.horizontal,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (boxConstrains.constrainWidth() / 6)
                                        .floor(),
                                    (index) => SizedBox(
                                          height: AppLayout.getHeight(1),
                                          width: AppLayout.getWidth(3),
                                          child: const DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.blue),
                                          ),
                                        )),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(5)),
                    Container(
                      padding: EdgeInsets.only(
                          left: AppLayout.getHeight(16),
                          right: AppLayout.getHeight(16),
                          top: AppLayout.getHeight(8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: AppLayout.getHeight(30),
                                    width: AppLayout.getWidth(40),
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/visa.png"))),
                                  ),
                                  Gap(AppLayout.getWidth(8)),
                                  Text("***2465",
                                      style: Styles.headLineStyle3
                                          .copyWith(color: Colors.black)),
                                ],
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text("Payment Method",
                                  style: Styles.headLineStyle3)
                            ],
                          ),
                          Column(
                            children: [
                              Text("\$399.99",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black)),
                              Gap(AppLayout.getHeight(5)),
                              Text("Price", style: Styles.headLineStyle3)
                            ],
                          )
                        ],
                      ),
                    ),
                    Gap(AppLayout.getHeight(40)),
                    Container(
                      padding: EdgeInsets.only(
                          left: AppLayout.getWidth(8),
                          right: AppLayout.getWidth(8),
                          bottom: AppLayout.getWidth(10)),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: "https://github.com/Raziur306",
                        drawText: false,
                        color: Colors.black,
                        width: double.infinity,
                        height: 70,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
