import 'package:flutter/material.dart';
import 'package:pro/pro.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override

  Widget build(BuildContext context) {
    final provider = Provider.of<pro>(context);
    return Scaffold(

      body: ListView.builder(itemCount: provider.userlist.length,itemBuilder: (context, index) {
        return Text("${provider.userlist[index].email}");
      },),
    );
  }
}
