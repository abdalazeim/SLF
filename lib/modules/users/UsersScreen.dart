import 'package:flutter/material.dart';
import 'package:flutter_first/models/user/user.dart';

class UsersScreen extends StatelessWidget {
 List<UserModel> users =[
   UserModel(id: 1, name: 'Abdalaazeem', phone: '0917130445'),
   UserModel(id: 2, name: 'hassan', phone: '0917130445'),
   UserModel(id: 3, name: 'ali', phone: '0917130445'),
   UserModel(id: 4, name: 'ahmed', phone: '0917130445'),
   UserModel(id: 5, name: 'zain', phone: '0917130445'),
   UserModel(id: 6, name: 'awod', phone: '0917130445'),
   UserModel(id: 7, name: 'mohmmed', phone: '0917130445'),
   UserModel(id: 8, name: 'altyeeb', phone: '0917130445'),
   UserModel(id: 9, name: 'saif', phone: '0917130445'),
   UserModel(id: 10, name: 'cona', phone: '0917130445'),
 ];
   UsersScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body:ListView.separated(
          itemBuilder: (context, index)=>contactList(users[index]),
          separatorBuilder: (context, index)=>Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length)
    );
  }

  Widget contactList(UserModel users)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(


      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text('${users.id}',style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold
          ),),

        ),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${users.name}',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
            Text('${users.phone}', style: TextStyle(color: Colors.grey),)
          ],

        )
      ],
    ),
  );
}
