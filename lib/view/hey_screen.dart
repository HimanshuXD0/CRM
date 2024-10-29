import 'package:crm/utils/constant.dart';
import 'package:crm/view/navbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:table_calendar/table_calendar.dart';

class HeyScreen extends StatefulWidget {
  const HeyScreen({super.key});

  @override
  State<HeyScreen> createState() => _HeyScreenState();
}

class _HeyScreenState extends State<HeyScreen> {
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
        height: 40,
      ),
    Row(
        children : [
           Flexible(child: SizedBox(width: 64)),
            Container(
              width: size.width * 0.23,
              height: size.height * 0.83,
              decoration :BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(1), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 1, // blur radius
                                  offset: Offset.fromDirection(
                                      1), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.white,
                            ),

               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Column(
                    children: [
                     //SizedBox(height: 5,),
                      Container(
                        //color: Colors.black,
                        height: size.height*0.30,
                        //width: size.width,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("New Notifications",style: TextStyle(fontSize: 14,color: primary.withOpacity(0.8)),)),
                              SizedBox(height: 11,),
                              
                               Expanded(
                                 child: ListView.builder(
                                  itemCount: 2,
                                  itemBuilder: (BuildContext context, int index){
                                    return Row(
                                      children: [
                                        CircleAvatar(radius: 15,
                                         backgroundColor: clist[index],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8,right: 8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Notification 6" ,style: TextStyle(fontSize: 14,color: primary.withOpacity(0.8)),),
                                                Text("Hey, let’s catchup tomorrow!" ,style: TextStyle(fontSize: 12,color: primary.withOpacity(0.8)),),
                                                SizedBox(height: 14,)
                                              ],
                                          ),
                                        ),
                                       Spacer(),
                                        Text("2:25 PM",style: TextStyle(fontSize: 12,color: primary.withOpacity(0.8)),),
                                        
                                        
                                      ],
                                    );
                                  }
                                 
                                 ),
                               )
                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                        Container(
                        //color: Colors.black,
                        height: size.height*0.45,
                        //width: size.width,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Previous Notifications",style: TextStyle(fontSize: 14,color: primary.withOpacity(0.8)),)),
                              SizedBox(height: 11,),
                              
                               Expanded(
                                 child: ListView.builder(
                                  itemCount: 10,
                                  itemBuilder: (BuildContext context, int index){
                                    return Row(
                                      children: [
                                        CircleAvatar(radius: 15,
                                         backgroundColor: clist[index%4],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8,right: 8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Notification 6" ,style: TextStyle(fontSize: 14,color: primary.withOpacity(0.8)),),
                                                Text("Hey, let’s catchup tomorrow!" ,style: TextStyle(fontSize: 12,color: primary.withOpacity(0.8)),),
                                                SizedBox(height: 14,)
                                              ],
                                          ),
                                        ),
                                       Spacer(),
                                        Text("2:25 PM",style: TextStyle(fontSize: 12,color: primary.withOpacity(0.8)),),
                                        
                                        
                                      ],
                                    );
                                  }
                                 
                                 ),
                               )
                          ],
                        ),
                      ),
                        
                    ],
                 ),
               ),
              ),
              Flexible(child: SizedBox(width: 23)),
            Container(
              width: size.width * 0.5,
              height: size.height * 0.83,
              decoration :BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(1), //color of shadow
                                  spreadRadius: 1, //spread radius
                                  blurRadius: 1, // blur radius
                                  offset: Offset.fromDirection(
                                      1), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                              color: Colors.white,
                            ),

               child: Column(
                 children: [
                        Container(
                          color: primary,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                           // CircleAvatar(radius: 15,),
                                            
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text("Managing notifications",style: TextStyle(fontSize: 22,color: Colors.white.withOpacity(0.8)),)),                                            
                                            
                                          ],
                                        ),
                          ),
                        ),
                    Padding(
                      padding: const EdgeInsets.all(58.0),
                      child: Container(
                        child: Text(
                          style: TextStyle(color: primary.withOpacity(0.8)),
                          'File…\nmnanaging notifications\nA message from Basecamp\nJan 30\nHi again!Let\'s talk about something near and dear to all of us. Notifications 🚨Personalizing your notifications is essential — update your settings to be intentional, not overwhelming.When you\'re updating your notification settings, you can decide What you\'re notified about, How you\'re notified, and When. \nFind those by clicking on your avatar in the top right corner, then selecting "Change your notification settings."I also want to call out Focus Mode. When you enable it, Basecamp temporarily quiets all notifications. Simply click on your avatar in the upper-right corner and select “Turn on Focus Mode.” When you\'re ready, you can turn it off and catch up on everything that happened while you were in the zone.LauraCustomer Success at Basecamp📣 If you\'re tired of seeing me (and all Basecamp notifications) in your inbox, you can unsubscribe! Head to your Basecamp account and click on your avatar. Select "Change notification settings" and make sure "Send me email notifications" is unchecked.')),
                    )

                 ],
               ),
              ),


        ]
        
      )
    ]));
  }
}
