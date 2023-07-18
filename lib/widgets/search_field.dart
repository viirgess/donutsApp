import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 40,
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search for donuts, toppings', 
          prefixIcon: const Icon(Icons.search, color: Colors.black,),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onChanged: (value) {
          setState(() {
          });
        },
      ),
    );
  }
}
