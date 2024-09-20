import 'package:chatapp/consts/colors.dart';
import 'package:chatapp/views/home_screen/components/drawers.dart';
import 'package:chatapp/views/home_screen/components/tabbar.dart';
import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'components/tabbar_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldkey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          key: scaffoldkey,
          drawer: drawer(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: bgColor,
          onPressed: (){},
          child: Icon(Icons.add,color: Colors.white,),
        ),
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              appbar(scaffoldkey),
              Expanded(
                  child: Row(
                    children: [
                      tabbar(),
                      TabbarView(),
                    ],
                  ),
              ),

            ],
          ),

        ),

      ),)

    );
  }
}
