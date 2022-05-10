import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:humo_test_app/core/constants/color_constants.dart';
import 'package:humo_test_app/core/utils/size_config.dart';

class Humo_line_graph extends StatelessWidget {
  const Humo_line_graph({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
        top: getHeight(30),
      ),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: getHeight(300),
          child: PageView.builder(
            itemBuilder: (context, index) {
              return SizedBox(
                height: getHeight(300),
                child: Column(
                  children: [
                    SizedBox(
                      height: getHeight(25),
                      width: getWidth(100),
                      child: Image.asset(
                        "assets/images/humo.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    SizedBox(
                      height: getHeight(15),
                    ),
                    Container(
                      height: getHeight(19),
                      width: getWidth(200),
                      child: Text(
                        "20 333 932.15 sum",
                        style: TextStyle(
                            color: ColorConstants.whiteColor,
                            fontSize: getHeight(15),
                            fontWeight: FontWeight.w800),
                      ),
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      height: getHeight(8),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child: Text(
                          "9860 31*** **** 0000",
                          style: TextStyle(color: ColorConstants.whiteColor),
                        )),
                        Text(
                          "09/20",
                          style: TextStyle(color: ColorConstants.whiteColor),
                        )
                      ],
                    ),
                    Expanded(
                      child: mainData(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

LineChart mainData() {
  List<Color> gradientColors = [
    ColorConstants.whiteColor,
    ColorConstants.whiteColor2
  ];
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
     
      case 1:
        text = const Text('Jan', style: style);
        break;
      case 3:
        text = const Text('Mar', style: style);
        break;
      case 5:
        text = const Text('Apr', style: style);
        break;
      case 7:
        text = const Text('Jun', style: style);
        break;
      case 9:
        text = const Text('Sep', style: style);
        break;
         case 11:
        text = const Text('Dec', style: style);
        break;
        
      default:
        text = const Text('', style: style);
        break;
    }

    return Padding(child: text, padding: const EdgeInsets.only(top: 8.0));
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.w500,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  return LineChart(LineChartData(
    gridData: FlGridData(
      show: false,
      drawVerticalLine: true,
      horizontalInterval: 1,
      verticalInterval: 1,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
      getDrawingVerticalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          interval: 1,
          getTitlesWidget: bottomTitleWidgets,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
          interval: 1,
          getTitlesWidget: leftTitleWidgets,
          reservedSize: 42,
        ),
      ),
    ),
    borderData: FlBorderData(show: false, border: Border.all()),
    minX: 0,
    maxX: 12,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartBarData(
        spots: const [
          FlSpot(0.2, 3),
          FlSpot(1.6, 2),
          FlSpot(4.9, 5),
          FlSpot(6.8, 3.1),
          FlSpot(8, 4),
          FlSpot(9.5, 3),
          FlSpot(11.9, 4),
        ],
        isCurved: true,
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: false,
          gradient: LinearGradient(
            colors: gradientColors
                .map((color) => color.withOpacity(0.3))
                .toList(),
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
      ),
    ],
  ));
}
