import 'package:flutter/material.dart';
import 'package:flutter_breakfast_app/models/category.dart';
import 'package:flutter_breakfast_app/screens/diet_screen.dart';
import 'package:flutter_breakfast_app/widgets/input-search.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_breakfast_app/screens/category_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchController = TextEditingController();

  List<Category> filteredCategories = [];

  @override
  void initState() {
    super.initState();
    filteredCategories = categories;
    _searchController.addListener(() {
      filterCategories();
    });
  }

  void filterCategories() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredCategories = categories.where((category) {
        return category.name.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: Container(
        color: Colors.grey.shade50,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  SearchInput(
                    controller: _searchController,
                  ),
                  SizedBox(height: 20),
                  CategoryScreen(
                    categories: filteredCategories,
                  ),
                  SizedBox(height: 20),
                  DietScreen(),
                ],
              ),
            ),
          ),
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
