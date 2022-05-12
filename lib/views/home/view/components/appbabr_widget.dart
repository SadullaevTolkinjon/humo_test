import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:humo_test_app/core/utils/size_config.dart';
import 'package:humo_test_app/views/home/view/components/humo_line_graph.dart';

class Appbar_lineGraph_widget extends StatelessWidget {
  const Appbar_lineGraph_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: getHeight(347.8),
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            Container(
              color: Colors.blue[100]!.withOpacity(0.88),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/images/menu.svg",
                      height: getHeight(17),
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/images/iye.svg",
                          height: getHeight(25),
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/images/notification.svg",
                          height: getHeight(20),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Humo_line_graph(),
          ],
        ),
      ),
    );
  }
}
