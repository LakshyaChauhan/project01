import 'package:flutter/material.dart';
import 'package:myapp/core/themes/app_pallet.dart';

class Search extends StatelessWidget {
  // final TextEditingController textController;
  final String hintText;
  const Search({super.key, required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppPallet.whiteColor,
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(5),
      child: TextField(
        // controller: textController,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}