import 'package:final_630710057/widgets/c1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRectanglesStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          children: [
            MyRowWithRectangles('Bangkok', Colors.black12),
            MyRowWithRectangles('Nakhon pathom', Colors.black26),
            MyRowWithRectangles('Paris', Colors.black38),
            Padding(
              padding: const EdgeInsets.all(10.0),
              //เว้นขอบทุกด้าน
            ),
            Text(
              'Nakhon Pathom',
              style: TextStyle(
                fontSize: 30, // ขนาดตัวอักษร
                fontWeight: FontWeight.bold, // น้ำหนักตัวอักษร
                color: Colors.black, // สีข้อความ
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              //เว้นขอบทุกด้าน
            ),
            Text(
              'Thailand',
              style: TextStyle(
                fontSize: 15, // ขนาดตัวอักษร
                fontWeight: FontWeight.bold, // น้ำหนักตัวอักษร
                color: Colors.black, // สีข้อความ
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              //เว้นขอบทุกด้าน
            ),
            Text(
              '2023-10-25 19:30',
              style: TextStyle(
                fontSize: 10, // ขนาดตัวอักษร
                fontWeight: FontWeight.bold, // น้ำหนักตัวอักษร
                color: Colors.black26, // สีข้อความ
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              //เว้นขอบทุกด้าน
            ),
            Icon(
              Icons.ac_unit, // ใช้ไอคอนที่คุณต้องการ
              size: 72.0, // ขนาดของไอคอน
              color: Colors.blueAccent, // สีของไอคอน
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              //เว้นขอบทุกด้าน
            ),
            Text(
              'Cold Weather',
              style: TextStyle(
                fontSize: 15, // ขนาดตัวอักษร
                fontWeight: FontWeight.bold, // น้ำหนักตัวอักษร
                color: Colors.black87, // สีข้อความ
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              //เว้นขอบทุกด้าน
            ),
            Text(
              '19.09',
              style: TextStyle(
                fontSize: 50, // ขนาดตัวอักษร
                fontWeight: FontWeight.bold, // น้ำหนักตัวอักษร
                color: Colors.black87, // สีข้อความ
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.5),
              //เว้นขอบทุกด้าน
            ),
            Text(
              'Feels like 20.23',
              style: TextStyle(
                fontSize: 15, // ขนาดตัวอักษร
                fontWeight: FontWeight.bold, // น้ำหนักตัวอักษร
                color: Colors.black38, // สีข้อความ
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.5),
              //เว้นขอบทุกด้าน
            ),
            Text(
              '°C   |   °F',
              style: TextStyle(
                fontSize: 15, // ขนาดตัวอักษร
                fontWeight: FontWeight.bold, // น้ำหนักตัวอักษร
                color: Colors.black38, // สีข้อความ
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.5),
              //เว้นขอบทุกด้าน
            ),

            
            Expanded(
                child: Container(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,

                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(
                         horizontal: 5.0,
                         vertical: 5.0,

                       ),
                       child: Row(
                         children: [
                           // ปุ่ม All Topics
                           Expanded(
                             child: CategoryButton(
                               text: 'HUMIDITY\n76%',
                               icon: Icons.water_drop_outlined,
                             ),
                           ),

                           //Size เคาะเปชบาไปทางขวา
                           SizedBox(width: 5.0),
                           // ปุ่ม Popular
                           Expanded(
                             child: CategoryButton(
                               text: 'WIND\n7.6 km/h',
                               icon: Icons.air,
                             ),
                           ),
                           SizedBox(width: 5.0),
                           Expanded(
                             child: CategoryButton(
                               text: 'UV\n6',
                               icon: Icons.sunny,
                             ),
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
                ))

          ],



        ),



      ),

    );
  }

}

class MyRowWithRectangles extends StatelessWidget {
  final String text;
  final Color color;

  MyRowWithRectangles(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // พื้นหลังสีขาว
      child: Column(
        children: [
          Container(
            height: 30.0, // ความสูงของแต่ละ Row
            color: color, // สีพื้นหลังของ Row
            child: Center(
              child: Text(text, style: TextStyle(color: Colors.black87)),
            ),
          ),
        ],
      ),
    );
  }
}