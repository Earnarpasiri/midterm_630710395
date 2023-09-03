import 'package:flutter/material.dart';

class BuildButtonPanel extends StatelessWidget {
  final String name;
  //final IconData icon;
  const BuildButtonPanel ({
    super.key,
    required this.name ,  //required notation ที่เราจะใส่ใน argument ที่บังคับให้ใส่
    //required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Icon(Icons.icon ,size: 50.0,color: color,),
          Text(name,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w900)),
        ],
      ),
      //width: 120.0,
      height:50.0 ,
      decoration: BoxDecoration(border: Border.all(color: Colors.black,style: BorderStyle.solid),borderRadius: BorderRadius.circular(20.0)),
    );
  }
}