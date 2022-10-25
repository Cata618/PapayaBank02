// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:ui';

import 'package:auth_ui/feature/login/presentation/login_screen.dart';
import 'package:auth_ui/util/my_card.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../core/theme/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      //barra de navegación inferior
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.deepOrange.shade200,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index){
          print(index);
        },
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ]
      ), 


      body: Column(children: [
        //app bar
        
        Padding(
          
          
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(height: 80),
                  Text(
                    'Mis',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Tarjetas',
                    style: TextStyle(fontSize: 28),
                  ),
                ],
                ),

                // plus button
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle, 
                    ),
                    child: Icon(Icons.add),
                ),
            ],
            ),

          ),

          SizedBox(height: 5),

        //cards
        Container(
          height: 200,
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: [
              MyCard(
                balance: 67.299,
                cardNumber: 126985986, 
                expiryMonth: 11, 
                expiryYear: 10, 
                color: Colors.deepOrange[300],
              ),
              MyCard(
                balance: 990.999,
                cardNumber: 10359867, 
                expiryMonth: 10, 
                expiryYear: 08, 
                color: Colors.deepPurple[300],
              ),
              MyCard(
                balance: 625.023,
                cardNumber: 10025986, 
                expiryMonth: 08, 
                expiryYear: 15, 
                color: Colors.blue[200],
              ),
            ],
          ),
        )

        //buttons -> send + pay + bills

        //column -> estadisticas + transacciones

      ],)

    );
  }
}