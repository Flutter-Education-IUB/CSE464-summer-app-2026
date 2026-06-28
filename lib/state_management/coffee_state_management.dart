import 'package:summer_iub_app/models/coffee_habits_model.dart';

class CoffeeStateManagement {
  List<CoffeeHabitsModel> items = [];

  void addData() {
    items.add(
      CoffeeHabitsModel(
        id: DateTime.now().millisecond,
        title: "This is my coffee no ${items.length+1}",
        des: "This is my coffee no ${items.length+1}",
        date: DateTime.now(),
      ),
    );
  }

  void createDate({required CoffeeHabitsModel coffeeHabitsModel}) {
    items.add(
      CoffeeHabitsModel(
        id: DateTime.now().millisecond,
        title: coffeeHabitsModel.title,
        des: coffeeHabitsModel.des,
        date: DateTime.now(),
        amount: coffeeHabitsModel.amount
      ),
    );
  }

}