import 'package:crm/utils/constant.dart';
import 'package:crm/view/navbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyStuffScreen extends StatefulWidget {
  const MyStuffScreen({super.key});

  @override
  State<MyStuffScreen> createState() => _MyStuffScreenState();
}

class _MyStuffScreenState extends State<MyStuffScreen> {
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
            Flexible(child: SizedBox(width: 52)),
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.8), //color of shadow
                            spreadRadius: 3, //spread radius
                            blurRadius: 7, // blur radius
                            offset: Offset(0, 5), // changes position of shadow
                          ),
                        ]),
                    height: size.height * 0.24,
                    width: size.width * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 50,
                            width: 50,
                            child: Center(child: SvgPicture.asset("assets/images/myassignment.svg",color: Colors.white,)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(child: Text("My Assignments",style: TextStyle(fontSize: 20,color: primary ,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 130,
                ),
                 Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.8), //color of shadow
                            spreadRadius: 3, //spread radius
                            blurRadius: 7, // blur radius
                            offset: Offset(0, 5), // changes position of shadow
                          ),
                        ]),
                    height: size.height * 0.24,
                    width: size.width * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 50,
                            width: 50,
                              child: Center(child: SvgPicture.asset("assets/images/draft.svg",color: Colors.white,)),
                            //child: Center(child: Text("CREATE NEW PROJECT",style: TextStyle(fontSize: 10,color: Colors.white ,fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(child: Text("My Drafts",style: TextStyle(fontSize: 20,color: primary ,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(width: 90,),
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.8), //color of shadow
                            spreadRadius: 3, //spread radius
                            blurRadius: 7, // blur radius
                            offset: Offset(0, 5), // changes position of shadow
                          ),
                        ]),
                    height: size.height * 0.24,
                    width: size.width * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 50,
                            width: 50,
                              child: Center(child: SvgPicture.asset("assets/images/book.svg",color: Colors.white,)),
                            //child: Center(child: Text("CREATE NEW PROJECT",style: TextStyle(fontSize: 10,color: Colors.white ,fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(child: Text("My Bookmarks",style: TextStyle(fontSize: 20,color: primary ,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 130,
                ),
                 Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.8), //color of shadow
                            spreadRadius: 3, //spread radius
                            blurRadius: 7, // blur radius
                            offset: Offset(0, 5), // changes position of shadow
                          ),
                        ]),
                    height: size.height * 0.24,
                    width: size.width * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 50,
                            width: 50,
                              child: Center(child: SvgPicture.asset("assets/images/clock.svg",color: Colors.white,)),
                            //child: Center(child: Text("CREATE NEW PROJECT",style: TextStyle(fontSize: 10,color: Colors.white ,fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(child: Text("My Recent Activity",style: TextStyle(fontSize: 20,color: primary ,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(width: 90,),
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.8), //color of shadow
                            spreadRadius: 3, //spread radius
                            blurRadius: 7, // blur radius
                            offset: Offset(0, 5), // changes position of shadow
                          ),
                        ]),
                    height: size.height * 0.24,
                    width: size.width * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 50,
                            width: 50,
                              child: Center(child: SvgPicture.asset("assets/images/calender.svg",color: Colors.white,)),
                            //child: Center(child: Text("CREATE NEW PROJECT",style: TextStyle(fontSize: 10,color: Colors.white ,fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(child: Text("My Schedule",style: TextStyle(fontSize: 20,color: primary ,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 130,
                ),
                 Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.8), //color of shadow
                            spreadRadius: 3, //spread radius
                            blurRadius: 7, // blur radius
                            offset: Offset(0, 5), // changes position of shadow
                          ),
                        ]),
                    height: size.height * 0.24,
                    width: size.width * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 50,
                            width: 50,
                              child: Center(child: SvgPicture.asset("assets/images/thumb.svg",color: Colors.white,)),
                            //child: Center(child: Text("CREATE NEW PROJECT",style: TextStyle(fontSize: 10,color: Colors.white ,fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(child: Text("My Boosts",style: TextStyle(fontSize: 20,color: primary ,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    )),
              ],
            )
          ],
        )
      ],
    ));
  }
}
