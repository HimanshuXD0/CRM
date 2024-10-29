import 'package:crm/utils/constant.dart';
import 'package:crm/view/navbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  var clist= [Color.fromARGB(255, 218, 158, 202),Color.fromARGB(255, 225, 225, 180),Color.fromARGB(255, 168, 227, 168),Color.fromARGB(255, 123, 215, 241)];

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
        height: 8,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 54,right: 54),
        child: Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(  
                       padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: primary,
                         
                        ),
                        child: Center(child: Text("All the latest activity",style: TextStyle(color: Colors.white),))),
                Container(  
                       padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          
                        ),
                        child: Center(child: Text("Someone’s activity",style: TextStyle(),))),
                Container(  
                       padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                  
                          
                        ),
                        child: Center(child: Text("Someone’s assignments",style: TextStyle(),))),
                Container(  
                       padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          
                        ),
                        child: Center(child: Text("To-dos added & completed",style: TextStyle(),))),
                Container(  
                       padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          
                        ),
                        child: Center(child: Text("Overdue to-dos",style: TextStyle(),))),
                Container(  
                       padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                       
                        ),
                        child: Center(child: Text("Upcoming dates",style: TextStyle(),))),
               
                   
              ]
            ),
          ),
        ),
      ),
       SizedBox(
        height: 10,
      ),
      Container(
          width: size.width * 0.7,
          height: size.height * 0.82,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4), //color of shadow
                spreadRadius: 1, //spread radius
                blurRadius: 1, // blur radius
                offset: Offset.fromDirection(0.1), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22), topRight: Radius.circular(22)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 23, bottom: 23),
                child: Center(
                    child: Text(
                  "Latest Activity",
                  style: TextStyle(
                      fontSize: 33,
                      color: primary,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Divider(
                color: primary,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                            "Thursday, February 23",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: primary,
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          showrow(index)
                        ],
                      );
                    }),
              )
            ],
          ))
    ]));
  }

  Widget showrow(var idx) {
    return (idx % 2 == 0)
        ? Row(
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.black))),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "KrayMedha",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: primary.withOpacity(0.9)),
                            ),
                          )),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: clist[(idx+1)%3],
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Expanded(
                              child: Text(
                                "Alka T. changed who can access this team Prateek Singh was granted access.",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: primary.withOpacity(0.8)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: SizedBox(
                width: 100,
              ))
            ],
          )
        : Row(
            children: [
              Expanded(
                  child: SizedBox(
                width: 100,
              )),
              Expanded(
                child: Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.black))),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              "KrayMedha",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: primary.withOpacity(0.9)),
                            ),
                          )),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: clist[idx%3],
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Expanded(
                              child: Text(
                                "Alka T. changed who can access this team Prateek Singh was granted access.",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: primary.withOpacity(0.8)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
            ],
          );
  }
}
