class CoffeeHabitsModel {
  final int id;
  final String title;
  final String des;
  final DateTime date;
  double? amount;

  CoffeeHabitsModel({
    required this.id,
    required this.title,
    required this.des,
    required this.date,
    this.amount,
  });
}