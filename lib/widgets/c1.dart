import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final IconData icon;
//จะให้อะไรเปลี่ยนแปลงก็พิมพ์ไว้


  const CategoryButton({
    super.key,
    required this.text,
    required this.icon,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //ใช้สร้างกล่อง
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          //ความมน
          border: Border.all(width: 2,color: Colors.black26)
        //เส้นขอบสี่เหลี่ยม
      ),
      child: Column(//กล่องไอคอนและอักษร
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2,
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.all(5.0),

            child: Icon(
              icon,
              color: Colors.black38,size: 20,


            ),

          ),

          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black87),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.all(5.0),
          )
        ],
      ),
    );
  }
}