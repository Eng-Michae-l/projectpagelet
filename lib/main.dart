import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageletsScreen(),
    );
  }
}

class PageletsScreen extends StatefulWidget {
  @override
  _PageletsScreenState createState() => _PageletsScreenState();
}

class _PageletsScreenState extends State<PageletsScreen> {

  List widgets = [
    Future.delayed(Duration(seconds: 2), () {return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 300,
          width: 300,
          margin: EdgeInsetsDirectional.symmetric(horizontal: 10),

          child:Image.network('https://images.pexels.com/photos/248412/pexels-photo-248412.jpeg?auto=compress&cs=tinysrgb&w=600') ,
        ),
        Container(
          height: 300,
          width: 300,
          margin: EdgeInsetsDirectional.symmetric(horizontal: 10),

          child:Image.network('https://images.pexels.com/photos/258244/pexels-photo-258244.jpeg?auto=compress&cs=tinysrgb&w=600') ,
        ),
        Container(
          height: 300,
          width: 300,
          margin: EdgeInsetsDirectional.symmetric(horizontal: 10),

          child:Image.network('https://images.pexels.com/photos/3270222/pexels-photo-3270222.jpeg?auto=compress&cs=tinysrgb&w=600') ,
        ),
      ],);}),
    Future.delayed(Duration(seconds: 4), (){return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 300,
          width: 300,
          margin: EdgeInsetsDirectional.symmetric(horizontal: 10),

          child:Image.network('https://images.pexels.com/photos/2783873/pexels-photo-2783873.jpeg?auto=compress&cs=tinysrgb&w=600') ,
        ),
        Container(
          height: 300,
          width: 300,
          margin: EdgeInsetsDirectional.symmetric(horizontal: 10),

          child:Image.network('https://images.pexels.com/photos/4195527/pexels-photo-4195527.jpeg?auto=compress&cs=tinysrgb&w=600') ,
        ),
        Container(
          height: 300,
          width: 300,
          margin: EdgeInsetsDirectional.symmetric(horizontal: 10),

          child:Image.network('https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGhvbmV8ZW58MHx8MHx8fDA%3D') ,
        ),
      ],);}),
    Future.delayed(Duration(seconds: 6), () { return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 300,
          width: 300,
          margin: EdgeInsetsDirectional.symmetric(horizontal: 10),

          child:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSviL9KusuSc023MBHkk82DhUuVxxJ7beS2av3ZnHsdvw&s') ,
        ),
        Container(
          height: 300,
          width: 300,
          margin: EdgeInsetsDirectional.symmetric(horizontal: 10),

          child:Image.network('https://m.media-amazon.com/images/I/61WzFmz9VRL._AC_SX679_.jpg') ,
        ),
        Container(
          height: 300,
          width: 300,
          margin: EdgeInsetsDirectional.symmetric(horizontal: 10),

          child:Image.network('https://m.media-amazon.com/images/I/61FxpZLVRcL._AC_SY879_.jpg') ,
        ),
      ],);}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text('PageletsMarket ',style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold),),
        backgroundColor: Colors.cyan,


      ),
      body: ListView.separated(
        itemCount: widgets.length,

        itemBuilder: (context, index) {
          return FutureBuilder(
            future: widgets[index],
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return snapshot.data as Widget;
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          );
        }, separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 50,);
      },
      ),
    );
  }
}