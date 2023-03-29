
import 'package:flutter/material.dart';

Widget defualtButton({

     double? width=double.infinity ,
      Color? background=Colors.blue,
      double? radius = 0.0,
      bool? isUpperCase=true,
      @required Function? function,
      @required String? text
})

  =>Container(

  width: width,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius!),
    color: background,
  ),
  child: MaterialButton(
      child: Text(isUpperCase! ? text!.toUpperCase():text! ,style: TextStyle(color: Colors.white),),
      onPressed:()=>function!,

));

Widget defualtInput(
{

   String ? label ='',
}
    ) =>TextFormField(
  controller:TextEditingController() ,
  keyboardType: TextInputType.visiblePassword,
  obscureText: true,

  decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
      prefixIcon: Icon(Icons.lock),
      suffixIcon: Icon(Icons.remove_red_eye_rounded)
  ),
);