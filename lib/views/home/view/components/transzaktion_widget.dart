import 'package:flutter/material.dart';
import 'package:humo_test_app/core/utils/size_config.dart';

class Tranzaktion_widget extends StatelessWidget {
  const Tranzaktion_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: getWidth(25), top: getHeight(30)),
          child: Text(
            "Транзакции",
            style:
                TextStyle(fontSize: getHeight(17), fontWeight: FontWeight.w700),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1),
            itemBuilder: (context, index) {
              return const ListTile(
                leading: Text("Hello"),
              );
            },
          ),
        )
      ],
    );
  }
}
