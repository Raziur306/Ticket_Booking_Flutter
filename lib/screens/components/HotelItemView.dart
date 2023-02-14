import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import '../../utils/app_styles.dart';

class HotelItemView extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelItemView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
        width: size.width * 0.6,
        height: AppLayout.getHeight(350),
        margin: const EdgeInsets.only(right: 17, top: 5),
        decoration: BoxDecoration(
            color: Styles.primaryColor,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 1,
              spreadRadius: 1
            )]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getHeight(180),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(21),
                      topLeft: Radius.circular(21)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel["image"]}"),
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel["place"],
                    style: Styles.headLineStyle1.copyWith(color: Colors.white),
                  ),
                  const Gap(7),
                  Text(
                    hotel["destination"],
                    style:
                        Styles.headLineStyle4.copyWith(color: Colors.white70),
                  ),
                  const Gap(7),
                  Text(
                    "\$${hotel["price"]}/Night",
                    style: Styles.headLineStyle1.copyWith(color: Colors.green),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
