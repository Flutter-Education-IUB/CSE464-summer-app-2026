import 'package:flutter/material.dart';

// ACM

class HomePage extends StatefulWidget {
  // Attribute
  final String pageTitle;

  // Constructor
  const HomePage({super.key, required this.pageTitle});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int _coffeeCount = 0;

  void incrememntCoffeeCount() {
    _coffeeCount++;
    setState((){}); // For giving user some feedba
    print("Coffee Count: $_coffeeCount");
  }



  // Methods
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.pageTitle,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.00,
          ),
        ),
        backgroundColor: Colors.brown,
      ),


      // * * * * -> Row

      // * 
      // * 
      // *
      // Column

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            Text(
                "How many coffee cups did you drink today?",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18.00,
                )
              ),
      
            // --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            Text(
              _coffeeCount.toString(),
              style: TextStyle(
                color: Colors.brown,
                fontSize: 36.00,
                fontWeight: FontWeight.bold,
              )
            ),
          
          ],
        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incrememntCoffeeCount();
        },
        child: Icon(Icons.local_cafe),
      ),
    );
  }
}
