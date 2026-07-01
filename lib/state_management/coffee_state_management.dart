import 'package:summer_iub_app/models/coffee_records_model.dart';

class CoffeeStateManagement {
  List<CoffeeRecordsModel> items = [];

  void addData(){
    items.add(
      CoffeeRecordsModel(
        id: DateTime.now().microsecondsSinceEpoch,
        title: "Coffee Record ${items.length + 1}",
        des: "Details about Coffee Record ${items.length + 1}",
        amount: 10.0,
        date: DateTime.now(),
      )
    );
  }


  void addCoffeeRecord(CoffeeRecordsModel coffeeRecord){
    items.add(
      CoffeeRecordsModel(
        id: DateTime.now().microsecondsSinceEpoch,
        title: coffeeRecord.title,
        des: coffeeRecord.des,
        amount: coffeeRecord.amount,
        date: coffeeRecord.date,
      )
      );
  }
}