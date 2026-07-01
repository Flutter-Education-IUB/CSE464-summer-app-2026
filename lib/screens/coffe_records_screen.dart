import 'package:flutter/material.dart';
import 'package:summer_iub_app/models/coffee_records_model.dart';
import 'package:summer_iub_app/state_management/coffee_state_management.dart';

import 'package:summer_iub_app/widgets/app_backgroud_design_widget.dart';

class CoffeRecordsScreen extends StatefulWidget {
  final CoffeeStateManagement coffeeStateManagement;
  const CoffeRecordsScreen({super.key, required this.coffeeStateManagement});

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
          itemCount: widget.coffeeStateManagement.items.length,
          itemBuilder:(context, index){

            final CoffeeRecordsModel coffeeRecord = widget.coffeeStateManagement.items[index];

            return Card(
              child: ListTile(
                leading: Icon(Icons.coffee),
                title: Text(coffeeRecord.title),
                subtitle: Text("${coffeeRecord.des} - Amount: ${coffeeRecord.amount} - ID: (${coffeeRecord.id})"),
              ),
            );
          }
      ),

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.coffeeStateManagement.addData();
          setState(() {});
        },
        child: Icon(Icons.local_cafe),
      ),
    );
  }
}