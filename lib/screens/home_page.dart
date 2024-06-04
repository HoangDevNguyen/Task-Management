import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/screens/menu_page.dart';
import 'package:task_management/widgets/constant.dart';
import 'package:task_management/widgets/premium.dart';
import 'package:task_management/widgets/tasks.dart';

import 'profile_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _pages = [
    const HomePage(),
    const ProfilePage(),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(getWidth(context, 30, dWidth)),
              topRight: Radius.circular(getWidth(context, 30, dWidth))
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(getWidth(context, 30, dWidth)),
              topRight: Radius.circular(getWidth(context, 30, dWidth))
          ),
          child: BottomNavigationBar(
            backgroundColor: kWhite,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            currentIndex: activeIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_rounded,
                    size: 30,
                  ),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_rounded, size: 30,),
                  label: 'Person'
              ),
            ],
            onTap: (index){
              setState(() {
                activeIndex = index;
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: kDark,
        child: Icon(Icons.add, color: kLightGrey, size: 35,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[activeIndex],
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kWhite,
    title: Row(
        children: <Widget>[
          Container(
            height: 45,
            width: 45,
            margin: const EdgeInsets.only(left: 10, top: 5),
            decoration: BoxDecoration(
              color: kLightGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                  'assets/images/profile.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Text(
            'Hello',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage())
              );
            },
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey.shade600,
              size: 35,
            ),
        )
      ],
    );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
            padding: EdgeInsets.only(right: 8, left: 8, top: 20),
          child: GoPremium(),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: const Text(
            "Tasks",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
            child: Tasks(),
        ),
      ],
    );
  }
}
