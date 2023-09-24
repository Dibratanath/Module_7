import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomeActivity()

    );

  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MysnakBer(massage,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(massage))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        toolbarHeight: 70,
        elevation: 15,
        actions: [
          IconButton(onPressed: (){MysnakBer("I am a add_bisness",context);}, icon: Icon(Icons.add_business)),
          IconButton(onPressed: (){MysnakBer("I am a search", context);}, icon: Icon(Icons.search)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () {
          MysnakBer("I am a action button", context);
        },
        child: Icon(Icons.account_circle_outlined) ,
        backgroundColor: Colors.amber,
      ),
    );
  }

}