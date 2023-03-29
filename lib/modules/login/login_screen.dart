
import 'package:flutter/material.dart';
import 'package:flutter_first/shared/component/component.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
var emailController = TextEditingController();
var passwordController = TextEditingController();
final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(
           child: SingleChildScrollView(
             child: Form(
               key: _formKey ,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,

                 children: [
                   Text('Login', style: TextStyle(
                     fontSize: 30.0,
                     fontWeight: FontWeight.bold
                   ),),
                   SizedBox(
                     height: 40.0,
                   ),
                   TextFormField(
                     controller: emailController,
                     keyboardType: TextInputType.emailAddress,
                     decoration: InputDecoration(
                       labelText: 'Enter your email',
                       border: OutlineInputBorder(),
                       prefixIcon: Icon(Icons.email)
                     ),
                     validator: (value){
                       if(value!.isEmpty){
                         return 'Email not be null';
                       }
                       return null;
                     },
                   ),
                   SizedBox(
                     height: 15.0,
                   ),
                   TextFormField(
                     controller: passwordController,
                     keyboardType: TextInputType.visiblePassword,
                     obscureText: true,

                     decoration: InputDecoration(
                         labelText: 'Enter your password',
                         border: OutlineInputBorder(),
                         prefixIcon: Icon(Icons.lock),
                       suffixIcon: Icon(Icons.remove_red_eye_rounded)
                     ),
                     validator: (value){
                       if(value == null || value.isEmpty){
                         return 'Password cant be emty';
                       }
                       return null;
                     },
                   ),
                   SizedBox(
                     height: 20.0,
                   ),
                   defualtButton(
                       function: (){
                         //if(_formKey.currentState!.validate()) {
                           print(emailController.text);
                           print(passwordController.text);
                         //}
                       },
                       text: 'login'),
                   SizedBox(
                     height: 20.0,
                   ),



                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Don\' You have acount ? '),
                       TextButton(onPressed: (){}, child: Text('Register Now')),
                     ],
                   ),


                 ],
               ),
             ),
           ),
         ),
       ),
    );
  }
}
