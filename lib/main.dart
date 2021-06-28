import 'dart:html';

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  Container myarticles(String imageVal,String heading,String subheading){
    return  Container(
              width: 450,
              child: Wrap(children:<Widget>[
                Image.network(imageVal),
                ListTile(
                  title: Text(heading),
                  subtitle: Text(subheading),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                )

              ],),
            )
    

  ;}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AppPage",
      theme: ThemeData(
        primaryColor: new Color(0xff82b5ab),
      ),
      home: Scaffold(appBar: AppBar(title: Text("Ecom App UI",style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),),
      actions: <Widget>[
        IconButton(
          icon:Icon(
            Icons.notification_add,
          ),
          onPressed:(){},
        ),
      ],
      ),
        body:Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 700,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children:<Widget>[
              myarticles("https://images.unsplash.com/photo-1522199755839-a2bacb67c546?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydGZvbGlvfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80","Macbook","5.0(23 reviews)"),
              myarticles("https://images.unsplash.com/photo-1542317854-f9596ae570f7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZGFyayUyMGxhcHRvcHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80","laptop","5.0(23 reviews)"),
              myarticles("http://images.unsplash.com/photo-1511512578047-dfb367046420?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMjA3fDB8MXxzZWFyY2h8Mnx8Z2FtaW5nfHwwfHx8fDE2MjM5NzMxODU&ixlib=rb-1.2.1&q=80&w=1080","GamingPC","5.0(23 reviews)"),
              myarticles("https://images.unsplash.com/photo-1508171997656-fdf7cf6c4df9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dmludGFnZSUyMGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80","Vintagecar","5.0(23 reviews)"),
            ],
          ),
      
        ),

      ),

      ); 

  }

}