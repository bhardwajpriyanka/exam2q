import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List image=[
    "assets/images/anna.jpg",
    "assets/images/alex.jpg",
    "assets/images/allison.jpg",
    "assets/images/archie.jpg",

  ];
  List name=["Anna Arletti",
    "Alex Solleri",
    "Archie Mellory",
    "Allison Boals",
    "Alicia Halls",
  ];
  List com=[
    "+393280345089",
    "+393450345089",
    "+393270345055",
    "+447323445347",
    "+440755345224",
  ];
  List col=[
    Colors.white.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
  ];
  List textcol=[
    Colors.blue,
    Colors.black,
    Colors.blue,
    Colors.black,
    Colors.blue,

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.white
        ),
        backgroundColor: Colors.blue.shade500,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black12,
                Colors.white,
              ])
          ),
          child: ListView.builder(
            itemCount: image.length,
            padding: EdgeInsets.all(5),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Box(image[index],name[index],com[index],col[index],textcol[index]),
            ),
          ),

        ),
        
      ),
    );
  }

  Widget Box(String image,String name,String com,Color col,Color txt) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: col,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundImage:
            AssetImage(image),
            maxRadius: 28,
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: txt)),
              Text(com,style: TextStyle(fontSize: 11,color: txt),),
            ],
          ),
          Expanded(
              child: SizedBox(
                width: 10,
              )),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                border: Border.all(color: txt)
            ),
            alignment: Alignment.center,
            child: Icon(Icons.call,size: 20,color: txt),),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}