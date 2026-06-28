import 'package:flutter/material.dart';
import 'package:summer_iub_app/models/coffee_habits_model.dart';
import 'package:summer_iub_app/state_management/coffee_state_management.dart';
import 'package:summer_iub_app/widgets/app_backgroud_design_widget.dart';
import 'package:summer_iub_app/widgets/core_input_widget.dart';

class CreateCoffeeRecordPage extends StatefulWidget {
  final CoffeeStateManagement coffeeStateManagement;
  const CreateCoffeeRecordPage({
    super.key,
    required this.coffeeStateManagement,
  });

  @override
  State<CreateCoffeeRecordPage> createState() => _CreateCoffeeRecordPageState();
}

class _CreateCoffeeRecordPageState extends State<CreateCoffeeRecordPage> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Coffee Record",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.00),
        ),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),

      body: AppBackgroudDesignWidget(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CoreInputWidget(
                controller: titleController,
                keyboardType: TextInputType.text,
                maxLines: 1,
                labelText: "Coffee Title",
              ),

              const SizedBox(height: 20.00),
              CoreInputWidget(
                controller: amountController,
                keyboardType: TextInputType.number,
                maxLines: 1,
                labelText: "Coffee price",
              ),

              const SizedBox(height: 20.00),
              CoreInputWidget(
                controller: descriptionController,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                labelText: "Coffee description",
              ),

              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(double.infinity, 50),

                ),
                onPressed: () {
                  CoffeeHabitsModel coffeeHabitsModel = CoffeeHabitsModel(
                    id: DateTime.now().microsecondsSinceEpoch,
                    title: titleController.text,
                    des: descriptionController.text,
                    date: DateTime.now(),
                    amount: double.parse(amountController.text),
                  );

                  widget.coffeeStateManagement.createDate(coffeeHabitsModel: coffeeHabitsModel);
                  Navigator.of(context).pop();


                },
                child: Text("Add data",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
