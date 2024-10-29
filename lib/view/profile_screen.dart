import 'package:crm/controllers/profilecontroller.dart';
import 'package:crm/utils/constant.dart';
import 'package:crm/view/navbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  void initState() {
    // TODO: implement initState
    
      getprofileData();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        //appBar: AppBar(title: Text('First Page')),
        body: Column(children: [
      const Flexible(
        child: SizedBox(
          height: 10,
        ),
      ),
      const NavbarScreen(),
      const SizedBox(
        height: 40,
      ),
      Row(children: [
        const SizedBox(width: 210),
        Container(
          width: size.width * 0.35,
          height: size.height * 0.84,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 4, //spread radius
                blurRadius: 6, // blur radius
                offset: Offset.fromDirection(1), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:20,left: 30,right: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.yellow,
                    child: Center(
                      child: Text("PS"),
                    ),
                  ),
                  const SizedBox(height:10),
                   Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primary,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: const Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ],
                    ),
                    child: const Center(child: Text("Upload Photo",style: TextStyle(color: Colors.white),))
                  ),
                  const SizedBox(height:10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("First Name",style: TextStyle(fontSize: 13,fontWeight:FontWeight.bold ),)),
                      const SizedBox(height: 10,),
                      Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: const Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ],
                    ),
                    child: const TextField(
                   //   controller: TextEditingController(text: profileobj.data![0].firstname.toString()),
                      decoration: InputDecoration(
                          //hintText: "Gmt +5:30 Chennai",
                          //hintStyle: TextStyle(color: Colors.white),
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 8, right: 8),
                          //fillColor: const Color.fromARGB(255, 52, 47, 86),
                          // filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                         // suffixIcon: Icon(Icons.arrow_drop_down)
                          //  SvgPicture.asset(
                          //   "assets/images/searchic.svg",
                          //   color: Colors.black,
                          // )
                          ),
                    ),
                  ),
                  const SizedBox(height:10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Last Name",style: TextStyle(fontSize: 13,fontWeight:FontWeight.bold ),)),
                      const SizedBox(height:10),
                      Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: const Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          //hintText: "Gmt +5:30 Chennai",
                          //hintStyle: TextStyle(color: Colors.white),
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 8, right: 8),
                          //fillColor: const Color.fromARGB(255, 52, 47, 86),
                          // filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                         // suffixIcon: Icon(Icons.arrow_drop_down)
                          //  SvgPicture.asset(
                          //   "assets/images/searchic.svg",
                          //   color: Colors.black,
                          // )
                          ),
                    ),
                  ),
                  const SizedBox(height:10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Staff Id ",style: TextStyle(fontSize: 13,fontWeight:FontWeight.bold ),)),
                      const SizedBox(height:10),
                      Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: const Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          //hintText: "Gmt +5:30 Chennai",
                          //hintStyle: TextStyle(color: Colors.white),
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 8, right: 8),
                          //fillColor: const Color.fromARGB(255, 52, 47, 86),
                          // filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                         // suffixIcon: Icon(Icons.arrow_drop_down)
                          //  SvgPicture.asset(
                          //   "assets/images/searchic.svg",
                          //   color: Colors.black,
                          // )
                          ),
                    ),
                  ),
                  const SizedBox(height:10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Email",style: TextStyle(fontSize: 13,fontWeight:FontWeight.bold ),)),
                      const SizedBox(height:10),
                      Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: const Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          //hintText: "Gmt +5:30 Chennai",
                          //hintStyle: TextStyle(color: Colors.white),
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 8, right: 8),
                          //fillColor: const Color.fromARGB(255, 52, 47, 86),
                          // filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                         // suffixIcon: Icon(Icons.arrow_drop_down)
                          //  SvgPicture.asset(
                          //   "assets/images/searchic.svg",
                          //   color: Colors.black,
                          // )
                          ),
                    ),
                  ),
                  const SizedBox(height:10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Phone Number",style: TextStyle(fontSize: 13,fontWeight:FontWeight.bold ),)),
                      const SizedBox(height:10),
                      Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: const Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          //hintText: "Gmt +5:30 Chennai",
                          //hintStyle: TextStyle(color: Colors.white),
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 8, right: 8),
                          //fillColor: const Color.fromARGB(255, 52, 47, 86),
                          // filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                         // suffixIcon: Icon(Icons.arrow_drop_down)
                          //  SvgPicture.asset(
                          //   "assets/images/searchic.svg",
                          //   color: Colors.black,
                          // )
                          ),
                    ),
                  ),
            
                  const SizedBox(height:10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Facebook",style: TextStyle(fontSize: 13,fontWeight:FontWeight.bold ),)),
                      const SizedBox(height:10),
                      Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: const Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          //hintText: "Gmt +5:30 Chennai",
                          //hintStyle: TextStyle(color: Colors.white),
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 8, right: 8),
                          //fillColor: const Color.fromARGB(255, 52, 47, 86),
                          // filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                         // suffixIcon: Icon(Icons.arrow_drop_down)
                          //  SvgPicture.asset(
                          //   "assets/images/searchic.svg",
                          //   color: Colors.black,
                          // )
                          ),
                    ),
                  ),
            
                  const SizedBox(height:10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("LinkedIn",style: TextStyle(fontSize: 13,fontWeight:FontWeight.bold ),)),
                      const SizedBox(height:10),
                      Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: const Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          //hintText: "Gmt +5:30 Chennai",
                          //hintStyle: TextStyle(color: Colors.white),
                          contentPadding:
                              EdgeInsets.only(bottom: 8, left: 8, right: 8),
                          //fillColor: const Color.fromARGB(255, 52, 47, 86),
                          // filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none),
                         // suffixIcon: Icon(Icons.arrow_drop_down)
                          //  SvgPicture.asset(
                          //   "assets/images/searchic.svg",
                          //   color: Colors.black,
                          // )
                          ),
                    ),
                  ),
            
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 27),
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
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 15),
            child: Column(
              children: [
                //SizedBox(height: 5,),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Login info",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "You log in with a password.Set up 2FA or change your login info here.",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Time zone",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Basecamp uses your time zone setting for email notifications, event reminders, your profile, and your notification settings.",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6), //color of shadow
                        spreadRadius: 1, //spread radius
                        blurRadius: 1, // blur radius
                        offset: const Offset(0, 1), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Gmt +5:30 Chennai",
                        //hintStyle: TextStyle(color: Colors.white),
                        contentPadding:
                            EdgeInsets.only(bottom: 8, left: 8, right: 8),
                        //fillColor: const Color.fromARGB(255, 52, 47, 86),
                        // filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none),
                        suffixIcon: Icon(Icons.arrow_drop_down)
                        //  SvgPicture.asset(
                        //   "assets/images/searchic.svg",
                        //   color: Colors.black,
                        // )
                        ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Time zone",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Basecamp uses your time zone setting for email notifications, event reminders, your profile, and your notification settings.",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6), //color of shadow
                        spreadRadius: 1, //spread radius
                        blurRadius: 1, // blur radius
                        offset: const Offset(0, 1), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Sunday",
                        //hintStyle: TextStyle(color: Colors.white),
                        contentPadding:
                            EdgeInsets.only(bottom: 8, left: 8, right: 8),
                        //fillColor: const Color.fromARGB(255, 52, 47, 86),
                        // filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none),
                        suffixIcon: Icon(Icons.arrow_drop_down)
                        //  SvgPicture.asset(
                        //   "assets/images/searchic.svg",
                        //   color: Colors.black,
                        // )
                        ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primary,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6), //color of shadow
                        spreadRadius: 1, //spread radius
                        blurRadius: 1, // blur radius
                        offset: const Offset(0, 1), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                    ],
                  ),
                  child: const Center(child: Text("Save My Changes",style: TextStyle(color: Colors.white),))
                ),
              ],
            ),
          ),
        ),
      ])
    ]));
  }
}
