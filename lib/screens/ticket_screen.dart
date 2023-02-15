import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

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
                          "Airplane Tickets",
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
                          "Hotels",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.grey),
                        ),
                      ))
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
          ],
        ),
      ),
    );
  }
}
