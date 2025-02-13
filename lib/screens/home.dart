import 'package:flutter/material.dart';
import 'package:flutter_breakfast_app/widgets/input-search.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: Container(
        color: Colors.grey.shade50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Column(
            children: [
              SizedBox(height: 20),
              SearchInput(),
            ],
          )),
        ),
      ),
    );
  }

  AppBar appBarWidget() {
    return AppBar(
      backgroundColor: Colors.grey.shade50,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Icon(Icons.chevron_left_outlined),
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.chevron_left_outlined,
              size: 28,
            ),
          ),

          Text(
            'Breakfast',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SvgPicture.asset(
            'assets/icons/dots.svg',
            height: 8,
          ),
        ],
      ),
    );
  }
}
