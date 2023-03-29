import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

   int? age;
   bool? isMale = true;
   int? weight;
  BmiResultScreen(
      {
        @required this.age,
        @required this.weight,
        @required this.isMale
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
        leading:IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            color: Colors.grey[400],
            width:double.infinity ,
            height: 200,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Gender : ${isMale! ? 'Male' : 'Female'}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Text('Resualut : ${weight}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Text('Age : ${age}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
