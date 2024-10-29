
import 'package:crm/main.dart';
import 'package:crm/view/activity_screen.dart';
import 'package:crm/view/dashboard_screen.dart';
import 'package:crm/view/mystuff_screen.dart';
import 'package:crm/view/pings_screen.dart';
import 'package:crm/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'utils/constant.dart';
import 'view/hey_screen.dart';

class SplitView extends StatefulWidget {
  // final String screen; // Add the screen variable here

  //const SplitView({required this.screen});

  @override
  State<SplitView> createState() => _SplitViewState();
}

class _SplitViewState extends State<SplitView> {
@override
  void initState(){
    bodyWidget =  ActivityScreen();
    super.initState();
  }

late Widget bodyWidget;

   void  getBody(Selection selection) {

    if(selection ==Selection.dashBoard){
      bodyWidget =  DashboardScreen();
    }else if(selection == Selection.lineUp){
      bodyWidget =  DashboardScreen();
    }else if (selection == Selection.pings){
      bodyWidget =  PingsScreen();
    }else if (selection == Selection.activity){
      bodyWidget = ActivityScreen();
    }else if (selection == Selection.hey){
       bodyWidget = HeyScreen();
    }else {
       bodyWidget = DashboardScreen();
    }
   
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const breakpoint = 810.0;
    if (screenWidth >= breakpoint) {
      // widescreen: menu on the left, content on the right
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // use SizedBox to constrain the AppMenu to a fixed width

          Container(
            width: 250,
            decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8), //color of shadow
                    spreadRadius: 3, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ]),
            height: MediaQuery.of(context).size.height * 0.95,
            // TODO: make this configurable
            child: AppMenu(onDrawerTap:(p0) {
              getBody(p0);
              setState(() {
                
              });
              
            } ,),
          ),
          // vertical black line as separator

          // use Expanded to take up the remaining horizontal space
          Expanded(
          
            child:bodyWidget
          ),
        ],

      );
    } else {
      // narrow screen: show content, menu inside drawer
      return Scaffold(
        body: FirstPage(),
        // use SizedBox to contrain the AppMenu to a fixed width
        drawer: SizedBox(
          width: 250,
          child: Drawer(
            child: AppMenu(onDrawerTap:(p0) {
              
            } ,),
          ),
        ),
      );
    }
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ancestorScaffold = Scaffold.maybeOf(context);
    final hasDrawer = ancestorScaffold != null && ancestorScaffold.hasDrawer;
    return Scaffold(
      // drawer: Drawer(
      //   child: AppMenu(),
      // ),
      appBar: AppBar(
        title: const Text('First Page'),
        leading: hasDrawer
            ? IconButton(
                icon: const Icon(Icons.menu),
                // 4. open the drawer if we have one
                onPressed:
                    hasDrawer ? () => ancestorScaffold.openDrawer() : null,
              )
            : null,
      ),
      body: Center(
        child: Text('First Page', style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}


enum Selection{

  dashBoard,lineUp,pings,hey,activity

}
class AppMenu extends StatefulWidget  {

  final Function(Selection) onDrawerTap;

  const AppMenu({super.key, required this.onDrawerTap});
  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> {
  int postion = 80;
  String svgic = "assets/images/Dashboard.svg";
 var obj =  new SplitView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// backgroundColor: primary,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8), //color of shadow
                    spreadRadius: 3, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ]),
          ),
          Image.asset("assets/images/log.png"),
          Positioned(
            top: 85,
            //left: 30,
            child: Container(
              //color: Colors.black,
              height: 600,
              child: SingleChildScrollView(
                child: Column(
                  //shrinkWrap: true,
                  children: [
                    Container(
                      height: 85,
                      // height: 100,
                      width: 250,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 80,
                          ),
                          SvgPicture.asset(
                            "assets/images/Dashboard.svg",
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                widget.onDrawerTap(Selection.dashBoard);
                                setState(() {
                                  postion = 80;
                                  svgic = "assets/images/Dashboard.svg";
                                  text = "Dashboard";
                                  
                                });
                              },
                              child: const Text(
                                "Dashboard",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      //height: 100,
                      height: 85,
                      width: 250,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 80,
                          ),
                          SvgPicture.asset(
                            "assets/images/lineup.svg",
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                widget.onDrawerTap(Selection.lineUp);
                                
                                setState(() {
                                  //postion = 180
                                  postion = 160;
                                  svgic = "assets/images/lineup.svg";
                                  text = "Lineup";
                                });
                              },
                              child: const Text(
                                "Lineup",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 250,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 80,
                          ),
                          SvgPicture.asset(
                            "assets/images/ping.svg",
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                widget.onDrawerTap(Selection.pings);
                                setState(() {
                                  postion = 246;
                                  svgic = "assets/images/ping.svg";
                                  text = "Pings";
                                });
                              },
                              child: const Text(
                                "Pings",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 250,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 80,
                          ),
                          SvgPicture.asset(
                            "assets/images/hey.svg",
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  widget.onDrawerTap(Selection.hey);
                                  postion = 336;
                                  svgic = "assets/images/hey.svg";
                                  text = "Hey!";
                                });

                                //  Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             const HeyScreen()));
                              },
                              child: const Text(
                                "Hey",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 250,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 80,
                          ),
                          SvgPicture.asset(
                            "assets/images/activity.svg",
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  widget.onDrawerTap(Selection.activity);
                                  postion = 420;
                                  svgic = "assets/images/activity.svg";
                                  text = "Activity";
                                });
                              },
                              child: const Text(
                                "Activity",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                         
                         
                        ],
                      ),
                    ),
                     const SizedBox(
                            height: 10,
                          ),
                     InkWell(
                              onTap: () {
                                setState(() {
                                });
                              },
                              child: Container(
                                              width: 100,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(11),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(0.6), //color of shadow
                                                    spreadRadius: 1, //spread radius
                                                    blurRadius: 1, // blur radius
                                                    offset: Offset(0, 1), // changes position of shadow
                                                    //first paramerter of offset is left-right
                                                    //second parameter is top to down
                                                  ),
                                                ],
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                       SvgPicture.asset(
                                                      "assets/images/logout.svg",
                                                      color: primary,
                                                    ),
                                                 
                                                    Text("Logout",style: TextStyle(color:primary),),
                                                  ],
                                                ),
                                              )
                                            ),)
                  ],
                ),
              ),
            ),
          ),
          Positioned(top: postion as double, child: hover(svgic, text))
        ],
      ),
    );
  }
}

Widget hover(var svgic, var text) {
  return Container(
      //  color: const Color.fromARGB(255, 52, 47, 86),
      child: Column(
    children: [
      // Image.asset("assets/images/log.png"),
      Container(
        height: 100,
        width: 250,
        //color: const Color.fromARGB(255, 52, 47, 86),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Container(
                height: 20,
                width: 250,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 52, 47, 86),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(60))),
              ),
            ),
            Container(
              height: 60,
              width: 220,
              margin: const EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      bottomLeft: Radius.circular(60))),
              child: Row(
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  SvgPicture.asset(
                    svgic,
                    color: const Color.fromARGB(255, 52, 47, 86),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Container(
                height: 20,
                width: 250,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 52, 47, 86),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(60))),
              ),
            ),
          ],
        ),
      )
    ],
  ));
}

