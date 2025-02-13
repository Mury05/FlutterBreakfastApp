import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  const SearchInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Search Pancake',
            hintStyle: TextStyle(color: Colors.grey.shade400),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 14),
            prefixIcon: Padding(
              padding: EdgeInsets.all(12),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                height: 20,
                colorFilter:
                    ColorFilter.mode(Colors.grey[500]!, BlendMode.srcIn),
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.all(12),
              child: SvgPicture.asset(
                'assets/icons/Filter.svg',
                height: 20,
                colorFilter:
                    ColorFilter.mode(Colors.blue[500]!, BlendMode.srcIn),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
