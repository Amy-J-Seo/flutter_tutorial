//navigator
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Navigator',
      theme:ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('FirstPage'),
        centerTitle:true,
      ),
    body:Center(
      child:ElevatedButton(
        onPressed:(){
          Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context){
              return SecondPage();
            },
          ));
        },
        child:Text('Go to the second page'),
      )
    ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar:AppBar(
        title:Text('SecondPage'),
        centerTitle:true,
      ),
      body:Center(
          child:ElevatedButton(
            onPressed:(){
              Navigator.pop(ctx);
            },
            child:Text('Go to the first page'),
          )
      ),
    );
  }
}



//Snackbar without builder and toast message
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// void main()=>runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title:'SnackBar',
//       theme:ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home:MyPage(),
//     );
//   }
// }
//
// class MyPage extends StatelessWidget {
//   const MyPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//         title:Text('SnackBar toast'),
//         centerTitle:true,
//       ),
//       // body:MySnackBar(),
//     body:Center(
//       child:ElevatedButton(
//         onPressed:(){
//           flutterToast();
//         },
//         child:Text('Toast'),
//       )
//     ),
//     );
//   }
// }
//
// void flutterToast(){
//   Fluttertoast.showToast(msg:'Test',
//     gravity:ToastGravity.BOTTOM,
//     backgroundColor:Colors.redAccent,
//     fontSize:20.0,
//     textColor:Colors.white,
//     toastLength:Toast.LENGTH_SHORT,
//   );
// }


// class MySnackBar extends StatelessWidget {
//   const MySnackBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child:ElevatedButton(
//           child:Text('show me'),
//           onPressed:(){
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content:Text('hello',
//                 textAlign:TextAlign.center,
//                   style:TextStyle(
//                     color:Colors.blue,
//                   ),
//                 ),
//                 backgroundColor:Colors.white,
//                 duration:Duration(milliseconds:1000),
//               )
//             );
//           }
//       ),
//     );
//   }
// }
//


//스낵바
// import 'package:flutter/material.dart';
//
// void main()=>runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title:'SnackBar',
//       theme:ThemeData(
//         primarySwatch: Colors.indigo
//       ),
//       home:MyPage(),
//     );
//   }
// }
//
// class MyPage extends StatelessWidget {
//   const MyPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//         title:Text('Snack Bar'),
//         centerTitle:true,
//       ),
//       body:Builder(builder:(BuildContext cxt){
//         return Center(
//           child:ElevatedButton(
//             child:Text("Elev btn"),
//             onPressed:(){
//               final snackBar = SnackBar(
//                 content:Text("hello"),
//               );
//               ScaffoldMessenger.of(context).showSnackBar(snackBar);
//             },
//             style:ButtonStyle(
//               textStyle:MaterialStateProperty.all(TextStyle(fontSize:15, color:Colors.blue)),
//               backgroundColor:MaterialStateProperty.all(Colors.red[100]),
//             ),
//           ),
//         );
//       },),
//     );
//   }
// }




//메뉴버튼 누르면 열리는 메뉴, 사용자 어쩌고
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title:'Appbar',
//       theme:ThemeData(
//         primarySwatch:Colors.indigo,
//       ),
//       home:MyPage(),
//     );
//   }
// }
//
// class MyPage extends StatelessWidget {
//   const MyPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//         title: Text('Appbar icon menu'),
//         centerTitle:true,
//         elevation:0.0,
//         // leading: IconButton(
//         //   icon:Icon(Icons.menu),
//         //   onPressed:(){
//         //     print('Menu btn clicked');
//         //   },
//         // ),
//         actions:<Widget>[
//           IconButton(
//             icon:Icon(Icons.shopping_cart),
//             onPressed:(){
//               print('shopping_cart btn clicked');
//             },
//           ),
//           IconButton(
//             icon:Icon(Icons.search),
//             onPressed:(){
//               print('search btn clicked');
//             },
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child:ListView(
//             padding: EdgeInsets.zero,
//             children:<Widget>[
//             UserAccountsDrawerHeader(
//               currentAccountPicture:CircleAvatar(
//                 backgroundImage:AssetImage('assets/kirby.png'),
//                 backgroundColor:Colors.white,
//               ),
//               otherAccountsPictures:<Widget>[
//                 CircleAvatar(
//                   backgroundColor: Colors.white,
//                   backgroundImage: AssetImage("assets/fox.jpeg"),
//                 ),
//                 // CircleAvatar(
//                 //   backgroundColor: Colors.white,
//                 //   backgroundImage: AssetImage("assets/fox.jpeg"),
//                 // ),
//               ],
//               accountName:Text('Foxy'),
//               accountEmail:Text("test@gmail.com"),
//               onDetailsPressed: (){
//                 print('arrow is clicked');
//               },
//               decoration: BoxDecoration(
//                 color: Colors.red[200],
//                 borderRadius:BorderRadius.only(
//                   bottomLeft: Radius.circular(40.0),
//                   bottomRight: Radius.circular(40.0),
//                 ),
//               ),
//             ),
//               ListTile(
//                 leading:Icon(Icons.home,
//                 color:Colors.grey[850]),
//                 title:Text('Home'),
//                 onTap:(){
//                   print("Home clicked");
//                 },
//                 // trailing:Icon(Icons.add),
//               ),
//               ListTile(
//                 leading:Icon(Icons.settings,
//                     color:Colors.grey[850]),
//                 title:Text('Setting'),
//                 onTap:(){
//                   print("Setting clicked");
//                 },
//                 // trailing:Icon(Icons.add),
//               ),
//               ListTile(
//                 leading:Icon(Icons.question_answer,
//                     color:Colors.grey[850]),
//                 title:Text('Q&A'),
//                 onTap:(){
//                   print("Q&A clicked");
//                 },
//                 // trailing:Icon(Icons.add),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }



//캐릭터 카드
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner:false,
//       title: 'BBANTO',
//       home: Grade(),
//     );
//   }
// }
//
// class Grade extends StatelessWidget {
//   // const Grade({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:Colors.amber[800],
//       appBar:AppBar(
//         title:Text("Hambo"),
//         backgroundColor: Colors.amber[700],
//         centerTitle:true,
//         elevation:0.0,
//       ),body:Padding(
//       padding:EdgeInsets.fromLTRB(30.0, 40.0, 0,0),
//       child:Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children:<Widget>[
//           Center(
//             child: CircleAvatar(backgroundImage:AssetImage('assets/image.webp'),
//             radius:60.0,
//             ),
//           ),
//           Divider(
//             height:60.0,
//             color:Colors.grey[850],
//             thickness:0.5,
//             endIndent:30.0,
//           ),
//           Text('Name',
//           style:TextStyle(
//             color:Colors.white,
//             letterSpacing:2.0,
//           ),
//           ),
//           SizedBox(
//             height:10.0,
//           ),
//           Text('Hello',
//           style:TextStyle(
//             color:Colors.white,
//             letterSpacing:2.0,
//             fontSize:28.0,
//             fontWeight: FontWeight.bold,
//           ),
//           ), SizedBox(
//             height:30.0,
//           ),
//           Text('BBANTO POWER LEVEL',
//             style:TextStyle(
//               color:Colors.white,
//               letterSpacing:2.0,
//             ),
//           ),
//           SizedBox(
//             height:10.0,
//           ),
//           Text('14',
//             style:TextStyle(
//               color:Colors.white,
//               letterSpacing:2.0,
//               fontSize:28.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ), SizedBox(
//             height:30.0,
//           ),
//           Row(
//             children: <Widget>[
//               Icon(Icons.check_circle_outline),
//               SizedBox(
//                 width:10.0,
//               ),
//               Text('Using lightsaver',
//                 style:TextStyle(
//                   fontSize:16.0,
//                   letterSpacing:1.0
//                 ),
//               )
//             ]
//           ),
//           Row(
//               children: <Widget>[
//                 Icon(Icons.check_circle_outline),
//                 SizedBox(
//                   width:10.0,
//                 ),
//                 Text('Face hero tatto',
//                   style:TextStyle(
//                       fontSize:16.0,
//                       letterSpacing:1.0
//                   ),
//                 ),
//               ]
//           ),
//           Row(
//               children: <Widget>[
//
//                 Icon(Icons.check_circle_outline),
//                 SizedBox(
//                   width:10.0,
//                 ),
//                 Text('Fire flames',
//                   style:TextStyle(
//                       fontSize:16.0,
//                       letterSpacing:1.0
//                   ),),
//               ]
//           ),
//           Center(
//             child:CircleAvatar(
//               backgroundImage:AssetImage('assets/kirby.png'),
//               radius:40.0,
//               backgroundColor:Colors.amber[800],
//             )
//           )
//         ]
//       )
//     )
//     );
//   }
// }
//
//
// class MyCard extends StatelessWidget {
//   // const MyHomePage({super.key, required this.title});
//   // final String title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//         title:Text("Test"),
//         centerTitle:true,
//         backgroundColor:Colors.redAccent,
//         elevation:0.0,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment:MainAxisAlignment.center,
//           children: <Widget>[
//             Text('Hello'),Text('Hello'),Text('Hello'),
//           ]
//         )
//       )
//
//     );
//   }
// }
//
//
