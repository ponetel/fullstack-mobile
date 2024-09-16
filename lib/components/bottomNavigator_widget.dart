import 'package:flutter/material.dart';
import 'package:restaurant_pr/view/home_view.dart';

class BottomnavigatorWidget extends StatefulWidget {
  const BottomnavigatorWidget({super.key});

  @override
  State<BottomnavigatorWidget> createState() => _BottomnavigatorWidgetState();
}

class _BottomnavigatorWidgetState extends State<BottomnavigatorWidget> {
  int currentIndex = 0;
  List<Widget> _children = [
    HomeView(),
    Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
    ),
    Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.pink,
      ),
    ),
    Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.green,
      ),
    ),
    Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.purpleAccent,
      ),
    ),
  ];

  _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
         //unselectedLabelStyle: TextStyle(color: Colors.grey),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "ໜ້າຫລັກ"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "ຄົ້ນຫາ"),
            BottomNavigationBarItem(icon: Icon(Icons.notification_add), label: "ແຈ້ງເຕືອນ"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "ອໍເດີ"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "ໂປຣໄຟຣ")
          ]),
    );
  }
}
