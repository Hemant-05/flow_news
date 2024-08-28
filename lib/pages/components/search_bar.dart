import 'package:flutter/material.dart';
import '../../utility/color.dart';

// ignore: camel_case_types
class Search_Bar extends StatelessWidget {
  const Search_Bar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(7, 18, 7, 18),
      child: TextField(
        onTap: (){}, readOnly: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),borderSide: BorderSide.none
          ),
          hintText: 'Search..',
          suffixIcon: const Icon(Icons.search, size: 27),
          fillColor: five, 
          filled: true, 

        ),
      ),
    );
  }
}

class SearchBarin extends StatelessWidget {
  const SearchBarin({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(7, 18, 7, 18),
      child: TextField(
        onTap: () {},
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none),
          hintText: 'Search..',
          suffixIcon: const Icon(Icons.search, size: 27),
          fillColor: five,
          filled: true,
        ),
      ),
    );
  }
}
