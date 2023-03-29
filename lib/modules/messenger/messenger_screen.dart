import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://topbloemen.nl/media/cache/product/images/product/9831/63b02ec60015e.png'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text('Chats',style: TextStyle(
              color: Colors.black
            ),)
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: CircleAvatar(
            backgroundColor: Colors.blue,
              radius: 15.0,
              child: Icon(Icons.camera_alt,
                color: Colors.white,
                size: 16.0,
              ))),
          IconButton(onPressed: (){}, icon: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 15.0,
              child: Icon(Icons.edit,
                color: Colors.white,
                size: 16.0,
              )))
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[200]
                ),
                child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text('Search')
                    ],
                  ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoreItem(),
                  separatorBuilder:(context, index)=>SizedBox(width: 20.0,) ,
                itemCount: 50,),
              ),
              SizedBox(height: 40.0,),
              ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index)=>buildChatItem(),
                  separatorBuilder: (context, index)=>SizedBox(height: 20.0,),
                  itemCount: 200)



            ],
          ),
        ),
      ),
    );
  }

  // 1- build item
  // 2. build list
  // 3. add item to list

//arrow function
Widget buildChatItem() => Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage('https://digitalhub.fifa.com/transform/03c00beb-0e4e-4a5d-bbdb-916baa554ebf/Cristiano-Ronaldo-is-Officially-Unveiled-as-Al-Nassr-Player?io=transform:fill,height:485,width:1024&quality=75'),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0
          ),
          child: CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.green,
          ),
        ),
      ],
    ),
    SizedBox(
      width: 20.0,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Alamin Alzubair',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0,),

          Row(

            children: [
              Expanded(
                child: Text('Welcom Pro My name is Amin ....',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: 7.0,
                  height: 7.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),

                ),

              ),
              Text('2:30 PM'),
            ],
          ),
        ],
      ),
    ),
  ],
);

  Widget buildStoreItem()=>Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://digitalhub.fifa.com/transform/03c00beb-0e4e-4a5d-bbdb-916baa554ebf/Cristiano-Ronaldo-is-Officially-Unveiled-as-Al-Nassr-Player?io=transform:fill,height:485,width:1024&quality=75'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0
              ),
              child: CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Text('Cristiano Ronaldo',
          maxLines: 2 ,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
