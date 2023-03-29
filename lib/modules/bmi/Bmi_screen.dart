import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/bmi_result_screen.dart';

class BmiCalcoulatr extends StatefulWidget {
  const BmiCalcoulatr({Key? key}) : super(key: key);

  @override
  State<BmiCalcoulatr> createState() => _BmiCalcoulatrState();
}

class _BmiCalcoulatrState extends State<BmiCalcoulatr> {
  bool isMale = true;
  double height =120.0;
  int weight = 40;
  int age =20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calulator'),

      ),
      body:Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('asset/images/male.jpg'),
                            width: 90.0,colorBlendMode:BlendMode.darken ,),
                            SizedBox(height: 15.0,),
                            Text('Male',style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.blue :Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.grey[400]:Colors.blue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Image(image: AssetImage('asset/images/male.jpg'),
                           height: 90.0,
                           width: 90.0,),
                            SizedBox(height: 15.0,),
                            Text('Female',style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HIGHT',style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 5.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${height.round()}', style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                        ),),
                        Text('CM',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                    Slider(value: height, onChanged: (value){
                      setState(() {
                        height = value;
                      });
                    },
                      max: 220.0,
                      min: 80.0,

                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT',style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),),
                          Text('${weight}', style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                                heroTag: 'weight--',
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),
                                heroTag: 'weight++',
                              )
                            ],
                          ),

                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),),
                          Text('${age}', style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                                heroTag: 'age--',
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                child: Icon(Icons.add),
                                heroTag: 'age++',
                              )
                            ],
                          ),

                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            width: double.infinity,

            child: MaterialButton(onPressed: (){
              double reus = weight / pow(height / 100, 2);


              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>BmiResultScreen(age: age,isMale: isMale,weight: reus.round())
              ),
              );
            },
              height: 50.0,
            child: Text('Calucolator',style: TextStyle(
              color: Colors.white
            ),),),
          )
        ],
      ),
    );
  }
}
