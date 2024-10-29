import 'package:crm/utils/constant.dart';
import 'package:crm/view/navbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PingsScreen extends StatefulWidget {
  const PingsScreen({super.key});

  @override
  State<PingsScreen> createState() => _PingsScreenState();
}

class _PingsScreenState extends State<PingsScreen> {
  var clist = [
    Color.fromARGB(255, 218, 158, 202),
    Color.fromARGB(255, 225, 225, 180),
    Color.fromARGB(255, 168, 227, 168),
    Color.fromARGB(255, 123, 215, 241)
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        //appBar: AppBar(title: Text('First Page')),
        body: Column(children: [
      Flexible(
        child: SizedBox(
          height: 10,
        ),
      ),
      NavbarScreen(),
      SizedBox(
        height: 40,
      ),
      Row(children: [
        Flexible(child: SizedBox(width: 64)),
        Container(
          width: size.width * 0.23,
          height: size.height * 0.83,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(1), //color of shadow
                spreadRadius: 1, //spread radius
                blurRadius: 1, // blur radius
                offset: Offset.fromDirection(1), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                //SizedBox(height: 5,),
                Container(
                  //color: Colors.black,
                  height: size.height * 0.30,
                  //width: size.width,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Pinned",
                            style: TextStyle(
                                fontSize: 14, color: primary.withOpacity(0.8)),
                          )),
                      SizedBox(
                        height: 11,
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: clist[index],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Annushka Mehta",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: primary.withOpacity(0.8)),
                                        ),
                                        Text(
                                          "Hey, let’s catchup tomorrow!",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: primary.withOpacity(0.8)),
                                        ),
                                        SizedBox(
                                          height: 14,
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "2:25 PM",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: primary.withOpacity(0.8)),
                                  ),
                                ],
                              );
                            }),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  //color: Colors.black,
                  height: size.height * 0.45,
                  //width: size.width,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Recent",
                            style: TextStyle(
                                fontSize: 14, color: primary.withOpacity(0.8)),
                          )),
                      SizedBox(
                        height: 11,
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: 15,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: clist[index%3],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Annushka Mehta",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: primary.withOpacity(0.8)),
                                        ),
                                        Text(
                                          "Hey, let’s catchup tomorrow!",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: primary.withOpacity(0.8)),
                                        ),
                                        SizedBox(
                                          height: 14,
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "2:25 PM",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: primary.withOpacity(0.8)),
                                  ),
                                ],
                              );
                            }),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Flexible(child: SizedBox(width: 23)),
        Container(
          width: size.width * 0.5,
          height: size.height * 0.83,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(1), //color of shadow
                spreadRadius: 1, //spread radius
                blurRadius: 1, // blur radius
                offset: Offset.fromDirection(1), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
            ],
            //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                color: primary,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // CircleAvatar(radius: 15,),

                      CircleAvatar(
                        radius: 15,
                        backgroundColor: clist[2],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Annushka Mehta",
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white.withOpacity(0.8),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Last Seen Today at 11:11 AM",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 100,),
                      Row(
                        children: [
                          Text(
                                  "Chat",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 55, 100, 223),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 14,),
                                Text(
                                  "Media",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white.withOpacity(0.8),
                                      fontWeight: FontWeight.bold),
                                ),
                        ],
                      ),
                      Expanded(child: SizedBox(width: 1,)),
                      Row(
                        children: [
                          Icon(Icons.call,color: Colors.white.withOpacity(0.8),),
                           SizedBox(width: 14,),
                           Icon(Icons.add_reaction_sharp,color: Colors.white.withOpacity(0.8),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(58.0),
                child: Container(),
              )
            ],
          ),
        ),
      ])
    ]));
  }
}
