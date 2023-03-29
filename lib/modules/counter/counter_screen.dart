import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
   CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
    int counter =1;
@override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),

      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState(() {
                counter--;
                print(counter);
              });

            }, child: Text('Muns')),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
              ),
              child: Text('$counter',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900),),
            ),
            TextButton(onPressed: (){
              setState(() {
                counter++;
                print(counter);
              });

            }, child: Text('Plus')),
          ],
        ),
      ),
    );
  }

}
