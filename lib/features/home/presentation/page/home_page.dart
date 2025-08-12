import 'package:flutter/material.dart';
import 'package:myapp/core/themes/app_pallet.dart';
import 'package:myapp/core/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100,width: double.infinity),
              Text('Home', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26),),
              SizedBox(height: 20),
              Search(hintText: "Search by Issuer Name or ISN"),
              SizedBox(height: 30),
              Text("SUGGESTED RESULTS", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10,color: AppPallet.greyColor),),
            ],
          ),
        ),
      ),
    );
  }
}