import 'package:crm/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
    return Row(
          children: [
             Flexible(
               child: SizedBox(
                width: 75,
                         ),
             ),
            const Text(
              "DECRYPTON",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 52, 47, 86),
              ),
            ),
           Flexible(
             child: SizedBox(
                width: MediaQuery.of(context).size.width*0.15
              ),
           ),
            
             Visibility(
              visible: screenWidth<900?false:true,
               child: Container(
                width: MediaQuery.of(context).size.width*0.33,
                height: 27,
                child: TextField(
                         
                  decoration: InputDecoration(
                    hintText: "Search ...",
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: const EdgeInsets.only(bottom: 8,left: 8,right: 8),
                      fillColor: const Color.fromARGB(255, 52, 47, 86),
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide.none),
                      suffixIcon: SvgPicture.asset(
                        "assets/images/searchic.svg",
                        color: Colors.white,
                      )),
                ),
                         ),
             ),
            Flexible(child: SizedBox(width: 37,)),
            Image.asset(
                        "assets/images/mailic.png",
                       
                      ),
            Flexible(child: SizedBox(width: 23,)),
            SvgPicture.asset(
                        "assets/images/bellic.svg",
                        
                      ),
            Flexible(child: SizedBox(width: 23,)),
            SvgPicture.asset(
                        "assets/images/mystuff2.svg",
                         color: primary,
                      ),
           
            Flexible(child: SizedBox(width: 23,)),
             CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Center(
                child: Text("PS"),
              ),
             ),
            Flexible(child: SizedBox(width: 15,)),
             Column(
              children: [
                Text("Parteek Singh",style:TextStyle(fontWeight: FontWeight.bold)),
                Text("Admin Account")
                
              ],
             )
          ],
        );
  }
}