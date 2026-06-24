import 'package:flutter/material.dart';
import 'package:summer_iub_app/utility/constant.dart';
import 'package:summer_iub_app/widgets/app_backgroud_design_widget.dart';

class CoffeRecordsScreen extends StatefulWidget {
  const CoffeRecordsScreen({super.key});

  @override
  State<CoffeRecordsScreen> createState() => _CoffeRecordsScreenState();
}

class _CoffeRecordsScreenState extends State<CoffeRecordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Coffee Records",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.00,
          ),
        ),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),

      body: AppBackgroudDesignWidget(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
          itemCount: 20,
          itemBuilder:(context, index){
            return Card(
              child: ListTile(
                leading: Icon(Icons.coffee),
                title: Text("Coffee Record ${ index + 1}"),
                subtitle: Text("Details about Coffee Record ${ index + 1}"),
              ),
            );
          }
      ),

      ),
    );
  }
}