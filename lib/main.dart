import 'package:flutter/material.dart';
import 'package:flutter_first/modules/counter/counter_screen.dart';
import 'package:flutter_first/modules/login/login_screen.dart';
import 'modules/bmi/Bmi_screen.dart';
import 'modules/users/UsersScreen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: LoginScreen(),
    );
    // var menuIcon = Icons.menu;
    // var titl = 'First App';
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.teal,
    //       title: Text(titl),
    //       leading: Icon(menuIcon),
    //       centerTitle: true,
    //       actions: [
    //         IconButton(
    //             onPressed: () {
    //               print('welcome flutter dev');
    //             },
    //             icon: Icon(Icons.notification_important)),
    //         IconButton(icon:Icon(Icons.search,)
    //           , onPressed: (){},),
    //       ],
    //     ),
    //    body:Column(
    //      children: [
    //
    //          Padding(
    //            padding: const EdgeInsets.all(50.0),
    //            child: Container(
    //              decoration: BoxDecoration(
    //                borderRadius: BorderRadiusDirectional.only(
    //                  topStart: Radius.circular(20)
    //                )
    //              ),
    //              clipBehavior: Clip.antiAliasWithSaveLayer,
    //              child: Stack(
    //                alignment: Alignment.bottomCenter,
    //              children:[ Image(image: NetworkImage('https://topbloemen.nl/media/cache/product/images/product/9831/63b02ec60015e.png'),
    //                height: 200,width: 200,fit: BoxFit.cover,),
    //                Container(
    //                  width: 200,
    //                  color: Colors.black.withOpacity(0.6),
    //                    padding:EdgeInsets.symmetric(
    //                      vertical: 6
    //                    ),
    //
    //                    child: Text('Fllower', textAlign: TextAlign.center, style: TextStyle(
    //                      color: Colors.white,
    //                      fontSize: 20
    //                    ),)),
    //              ],),
    //            ),
    //          ),
    //
    //      ],
    //    ),
    //   ),
    // );
  }
}
