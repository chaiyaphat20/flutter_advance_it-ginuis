import 'package:flutter/material.dart';
import 'package:hero_service_app/screens/bottom_nav/home_screen.dart';
import 'package:hero_service_app/screens/bottom_nav/market_screen.dart';
import 'package:hero_service_app/screens/bottom_nav/booking_screen.dart';
import 'package:hero_service_app/screens/bottom_nav/setting_screen.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  //สร้างตัวแปร List สลับหน้าจอ
  int _currentIndex = 0;
  String _title = "บริการ";

  final List<Widget> _children = [
    HomeScreen(),
    MarketScreen(),
    BookingScreen(),
    SettingScreen()
  ];

  //สร้าง function เพื่อใช้ในการเปลี่ยนหน้า
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;

      //เปลี่ยน title ไปตาม tab ที่เลือก
      switch (index) {
        case 0:
          _title = "บริการ";
          break;
        case 1:
          _title = "ตลาด";
          break;
        case 2:
          _title = "รายการจอง";
          break;
        case 3:
          _title = "อื่นๆ";
          break;
        default:
          _title = "บริการ";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "หน้า $_title",
            style: TextStyle(fontWeight: FontWeight.w100),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => onTabTapped(index), //main show current index on tab
        currentIndex: _currentIndex,
        backgroundColor: Colors.teal,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.business_center,
                color: Colors.white,
              ),
              label: "บริาการ"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              label: "ตลาด",
              tooltip: "Click"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books,
                color: Colors.white,
              ),
              label: "รายการจอง"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              label: "อื่นๆ"),
        ],
      ),
      body: Container(
        child: _children[_currentIndex],
      ),
    );
  }
}
