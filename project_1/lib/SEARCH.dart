import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/ListSearch.dart';

class Search extends StatefulWidget {
  static const String routeName = 'Search';

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF121312),
      body: Column(
        children: [
          SizedBox(height: size.width * 0.1),
          Container(
            margin: EdgeInsets.all(19),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF514F4F),
            ),
            child: TextFormField(
              key: formKey,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'write name film';
                }
                return null;
              },
              onTap: () {},
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                hintText: 'Search',
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12, left: 10),
                  child: Divider(
                    color: Color(0xFF707070),
                    thickness: 1,
                  ),
                );
              },
              itemBuilder: (context, index) {
                return ListSearch();
              },
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }

  

  void AddTask() {
    if (formKey.currentState?.validate() == true) {}
  }
}
