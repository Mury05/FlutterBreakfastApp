import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search Pancake',
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 14),
            prefixIcon: Padding(
              padding: EdgeInsets.all(12),
              child: SvgPicture.asset(
                'assets/icons/search.svg', // Chemin de l'icône
                height: 20,
                colorFilter:
                    ColorFilter.mode(Colors.grey[500]!, BlendMode.srcIn),
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.all(12),
              child: SvgPicture.asset(
                'assets/icons/Filter.svg', // Chemin de l'icône
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
