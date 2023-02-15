import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/circle_shape.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> tickets;
  const TicketView({Key? key , required this.tickets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin:const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
            decoration: const BoxDecoration(
              color: Color(0xFF526799),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21)),
            ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(tickets["from"]["code"], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                     const Spacer(),
                      RoundShape(shapeColor: Colors.white,),
                    Expanded(child: Stack(
                      children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext buildContext, BoxConstraints boxConstrains) {
                              return Flex(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                direction: Axis.horizontal,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((boxConstrains.constrainWidth()/6).floor(), (index) =>  SizedBox(
                                  height: AppLayout.getHeight(1),
                                  width: AppLayout.getWidth(3),
                                  child: const DecoratedBox(decoration: BoxDecoration(color: Colors.white),),
                                )),
                              );
                            },
                          ),
                        ),
                        Transform.rotate(angle: 1.5, child:
                         const Center(child: Icon(Icons.local_airport_rounded, color: Colors.white,))),
                      ],
                    )),
                      RoundShape(shapeColor: Colors.white,),
                    const Spacer(),
                      Text(tickets["to"]["code"],style: Styles.textStyle.copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(tickets["from"]["name"], style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    Text(tickets["flying_time"],style: Styles.headLineStyle4.copyWith(color:Colors.white),),
                    Text(tickets["to"]["name"],style: Styles.headLineStyle4.copyWith(color:Colors.white)),
                  ],)
                ],
              ),
            ),
            Container(
              padding:const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius:const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              child:


              Column(children: [
                Row(children: [
                   SizedBox(
                    width: AppLayout.getHeight(20),
                    height: AppLayout.getWidth(20),
                    child: const DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10))
                    ),),

                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (BuildContext buildContext , BoxConstraints boxConstraints ) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            direction: Axis.horizontal,
                            children: List.generate((boxConstraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                              width:5,
                              height: 1,
                              child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),)
                            ))
                        );
                      },
                    ),
                  ),
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topLeft: Radius.circular(10))
                    ),),
                  )
                ],),
                const Gap(10),

                Container(
                  padding:const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(tickets["date"], style: Styles.headLineStyle3.copyWith(color:Colors.white)),
                          Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Text(tickets["departure_time"], style: Styles.headLineStyle3.copyWith(color:Colors.white)),
                          Text("Departure Time", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Text(tickets["number"].toString(), style: Styles.headLineStyle3.copyWith(color:Colors.white)),
                          Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white))
                        ],
                      )

                    ],
                  ),
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}
