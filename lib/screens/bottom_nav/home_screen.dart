import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //สรา้งตัวแปรเก็บชื่อ menu
  var services = [
    "Sofa Cleaning",
    "Carpet Cleaning",
    "Deep Cleaning",
    "Office Cleaning",
    "Window Cleaning",
    "Contruct Cleaning",
    "Wall Painting",
    "Move In Cleaning"
  ];

  var images = [
    "assets/images/menu_icon/broom.png",
    "assets/images/menu_icon/adornment.png",
    "assets/images/menu_icon/vacuum.png",
    "assets/images/menu_icon/offices.png",
    "assets/images/menu_icon/window.png",
    "assets/images/menu_icon/house.png",
    "assets/images/menu_icon/paint-roller.png",
    "assets/images/menu_icon/cleaner.png",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: services.length, //จำนวนรายการใน grid view
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //แนวนอน 2 column
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height /
                  2.4) //ความสูงน้อยกว่า 2.4 เท่า
          ), //บอกขนาด grid ว่ามีกี่ column , row
      itemBuilder: (context, index) {
        return Card(
          child: InkWell(
            onTap: () {
              print("Click");
            },
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Image.asset(
                  images[index],
                  height: 50,
                  width: 50,
                ), //แรียงตาม ลำดับของ images
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      services[index],
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
