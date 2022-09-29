import 'package:flutter/material.dart';
import 'package:maham/widgets/widget6.dart';
import 'package:maham/screens/screen3.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.all(30),
              child: Text(
                'Tasks',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          Expanded(
            child: Tasks(),
          )
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 41, 47, 114),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Screen3()));
        },
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10)
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Color.fromARGB(255, 41, 47, 114),
            unselectedItemColor: Colors.grey.withOpacity(0.5),
            items: [
              BottomNavigationBarItem(
                  label: 'Home', icon: Icon(Icons.home_rounded, size: 40)),
              BottomNavigationBarItem(
                  label: 'Settings', icon: Icon(Icons.settings, size: 40))
            ],
          ),
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      toolbarHeight: 65,
      backgroundColor: Color.fromARGB(255, 41, 47, 114),
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/mama.png'),
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Hello, Hayat!',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 26,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      actions: [
        // Icon(
        //   Icons.more_vert,
        //   color: Color.fromARGB(255, 255, 255, 255),
        //   size: 40,
        // ),
      ],
    );
  }
}
