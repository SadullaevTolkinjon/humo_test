import 'package:flutter/material.dart';
import 'package:humo_test_app/core/utils/size_config.dart';
import 'package:humo_test_app/views/home/view/components/appbabr_widget.dart';
import 'package:humo_test_app/views/home/view/components/humo_line_graph.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.blue[100]!.withOpacity(0.88),
      body: const SafeArea(
        child: CustomScrollView(
          slivers: [
            Appbar_widget(),
            Humo_line_graph(),
          ],
        ),
      ),
    );
  }
}
