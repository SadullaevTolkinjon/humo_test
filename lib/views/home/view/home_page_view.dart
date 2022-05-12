import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:humo_test_app/core/utils/size_config.dart';
import 'package:humo_test_app/views/home/view/components/appbabr_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState>? _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.transparent,
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const Appbar_lineGraph_widget(),
           SliverPadding(padding: EdgeInsets.only(top: getHeight(30)),sliver:  SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(100, 40),
                  ),
                ),
                child: Stack(children: [
                  Padding(
                    padding: EdgeInsets.only(left: getWidth(25), top: getHeight(30)),
                    child: Text(
                      "Транзакции",
                      style:
                          TextStyle(fontSize: getHeight(17), fontWeight: FontWeight.w700),
                    ),
                  ),
               //  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1), itemBuilder: ())
                ],)
              ),
            ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _scaffoldKey!.currentState!.openEndDrawer();
      }),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {},
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/dimond.svg",
                height: getHeight(30),
              ),
              label: "Услуги"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/home2.svg"),
              label: "Главная"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/favorite3.svg",
                height: getHeight(30),
              ),
              label: "Избранные")
        ],
      ),
    );
  }

 
}
