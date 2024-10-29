import 'package:crm/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';

import 'navbar_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        //appBar: AppBar(title: Text('First Page')),
        body: Column(
      children: [
        Flexible(
          child: SizedBox(
            height: 10,
          ),
        ),
        NavbarScreen(),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Flexible(child: SizedBox(width: 152)),
            Container(
              width: size.width * 0.38,
              height: size.height * 0.83,
              child: Column(
                children: [
                  Container(
                 decoration: BoxDecoration(
                           
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white, 
                            ),
                    width: size.width * 0.38,
                    height: size.height * 0.50,
                    // color: Colors.white,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          left: 5,
                          child: Container(
                            width: size.width * 0.37,
                            height: size.height * 0.46,
                              decoration :BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(1), //color of shadow
                                  spreadRadius: 5, //spread radius
                                  blurRadius: 7, // blur radius
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(Icons.more_horiz)),
                                TableCalendar(
                                  rowHeight :25.0,
                                  daysOfWeekHeight : 16.0,
                                    focusedDay: DateTime.now(),
                                    firstDay: DateTime.utc(2010, 6, 16),
                                    lastDay: DateTime.utc(2030, 6, 16)),
                                    SizedBox(height: 10,),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text("Nothing’s on the schedule     ",style: TextStyle(fontSize: 10),))
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 165,
                          child: Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.8), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ]
                            ),
                            height: 40,
                            width: 160,
                            child: Center(child: Text("YOUR SCHEDULE",style: TextStyle(fontSize: 15,color: Colors.white ,fontWeight: FontWeight.bold),)),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                  
                    width: size.width * 0.38,
                    height: size.height * 0.30,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          child: Container(
                             decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(1), //color of shadow
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ]),
                            //padding: EdgeInsets.only(top: 20),
                            width: size.width * 0.37,
                            height: size.height * 0.26,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Column(
                               // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/check.png",height: 50,color: primary,),
                                  Center(child: Text("You don’t have any assignments right now. When you have to-dos assigned to you in Basecamp, they’ll show up here.",textAlign:TextAlign.center ,style: TextStyle(fontSize: 15,),)),
                                ],
                              ),
                            ),
                            //color: Colors.black,
                          ),
                        ),
                        Positioned(
                          left: 165,
                          child: Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.8), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ]
                              
                            ),
                            height: 40,
                            width: 160,
                           child: Center(child: Text("YOUR ASSIGNMENTS",style: TextStyle(fontSize: 13,color: Colors.white ,fontWeight: FontWeight.bold),)),

                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 78,),
            Column(
              children: [
                   Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.8), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ]
                              
                            ),
                            height: size.height*0.18,
                            width: size.width*0.2,
                           child: Column(
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(top: 8),
                                 child: Container(
                                                           decoration: BoxDecoration(
                                                             color: primary,
                                                             borderRadius: BorderRadius.circular(10),
                                 boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.8), //color of shadow
                                      spreadRadius: 3, //spread radius
                                      blurRadius: 7, // blur radius
                                      offset: Offset(
                                          0, 5), // changes position of shadow
                                    ),
                                  ]
                                                             
                                                           ),
                                                           height: 40,
                                                           width: 150,
                                                          child: Center(child: Text("CREATE NEW PROJECT",style: TextStyle(fontSize: 10,color: Colors.white ,fontWeight: FontWeight.bold),)),
                               
                                                         ),
                               ),
                          SizedBox(height: 8,),
                               Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.8), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ]
                              
                            ),
                            height: 40,
                            width: 150,
                           child: Center(child: Text("INVITE PEOPLE",style: TextStyle(fontSize: 10,color: Colors.white ,fontWeight: FontWeight.bold),)),

                          ),
                            ],
                           )

                          ),
                          SizedBox(height: 13,),
                   Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.8), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ]
                              
                            ),
                            height: size.height*0.18,
                            width: size.width*0.2,
                           child: Padding(
                            padding: EdgeInsets.only(left: 10,right: 5),
                             child: Column(
                              children: [
                                 SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Flexible(child: SizedBox(width: 90,)),
                                        Text("Team ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                        Spacer(),
                                        SvgPicture.asset('assets/images/pin.svg'),
                                      ],
                                    ),
                                      SizedBox(height: 10,),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Kray Medha ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                                         SizedBox(height: 10,),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: CircleAvatar(radius: 10,)),
                              ],
                             ),
                           )

                          ),
                          SizedBox(height: 13,),
                   Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.8), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ]
                              
                            ),
                            height: size.height*0.18,
                            width: size.width*0.2,
                           child: Center(child: Text("YOUR ASSIGNMENTS",style: TextStyle(fontSize: 13,color: Colors.white ,fontWeight: FontWeight.bold),)),

                          ),
                          SizedBox(height: 13,),
                   Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.8), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ]
                              
                            ),
                            height: size.height*0.18,
                            width: size.width*0.2,
                           child: Center(child: Text("YOUR ASSIGNMENTS",style: TextStyle(fontSize: 13,color: Colors.white ,fontWeight: FontWeight.bold),)),

                          ),
                          SizedBox(height: 13,),
              ],
            )
          ],
        )
      ],
    ));
  }
}
