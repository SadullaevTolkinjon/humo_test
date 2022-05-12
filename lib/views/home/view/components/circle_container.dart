import 'package:flutter/material.dart';
import 'package:humo_test_app/core/utils/size_config.dart';
import 'package:humo_test_app/views/home/view/components/transzaktion_widget.dart';

class ModalShet extends StatelessWidget {
  const ModalShet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: EdgeInsets.only(
          top: getHeight(30),
        ),
        sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return CustomPaint(
                painter: ModalShettPainter(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: const Tranzaktion_widget(),
                ),
              );
            },childCount: 1),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1)));
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class ModalShettPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0004917040, size.height * 0.07166720);
    path_0.cubicTo(
        size.width * 0.0004917040,
        size.height * 0.04589823,
        size.width * 0.03502648,
        size.height * 0.02438404,
        size.width * 0.08011838,
        size.height * 0.02206170);
    path_0.lineTo(size.width * 0.4744112, size.height * 0.001755230);
    path_0.cubicTo(
        size.width * 0.4919502,
        size.height * 0.0008518333,
        size.width * 0.5096012,
        size.height * 0.0008544770,
        size.width * 0.5271402,
        size.height * 0.001763131);
    path_0.lineTo(size.width * 0.9185639, size.height * 0.02204007);
    path_0.cubicTo(
        size.width * 0.9636355,
        size.height * 0.02437500,
        size.width * 0.9981433,
        size.height * 0.04588422,
        size.width * 0.9981433,
        size.height * 0.07164309);
    path_0.lineTo(size.width * 0.9981433, size.height * 0.9356986);
    path_0.cubicTo(
        size.width * 0.9981433,
        size.height * 0.9603227,
        size.width * 0.9665296,
        size.height * 0.9812518,
        size.width * 0.9237570,
        size.height * 0.9849433);
    path_0.lineTo(size.width * 0.5443988, size.height * 1.017697);
    path_0.cubicTo(
        size.width * 0.5154829,
        size.height * 1.020193,
        size.width * 0.4860685,
        size.height * 1.020200,
        size.width * 0.4571464,
        size.height * 1.017718);
    path_0.lineTo(size.width * 0.07495452, size.height * 0.9849131);
    path_0.cubicTo(
        size.width * 0.03214611,
        size.height * 0.9812394,
        size.width * 0.0004917040,
        size.height * 0.9603014,
        size.width * 0.0004917040,
        size.height * 0.9356613);
    path_0.lineTo(size.width * 0.0004917040, size.height * 0.07166720);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white;
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.001950259, size.height * 0.07166720);
    path_1.cubicTo(
        size.width * 0.001950259,
        size.height * 0.04632784,
        size.width * 0.03590935,
        size.height * 0.02517199,
        size.width * 0.08024984,
        size.height * 0.02288848);
    path_1.lineTo(size.width * 0.4745421, size.height * 0.002581986);
    path_1.cubicTo(
        size.width * 0.4919938,
        size.height * 0.001683108,
        size.width * 0.5095545,
        size.height * 0.001685739,
        size.width * 0.5270093,
        size.height * 0.002589840);
    path_1.lineTo(size.width * 0.9184299, size.height * 0.02286667);
    path_1.cubicTo(
        size.width * 0.9627508,
        size.height * 0.02516277,
        size.width * 0.9966854,
        size.height * 0.04631365,
        size.width * 0.9966854,
        size.height * 0.07164309);
    path_1.lineTo(size.width * 0.9966854, size.height * 0.9356986);
    path_1.cubicTo(
        size.width * 0.9966854,
        size.height * 0.9599131,
        size.width * 0.9655981,
        size.height * 0.9804911,
        size.width * 0.9235358,
        size.height * 0.9841241);
    path_1.lineTo(size.width * 0.5441807, size.height * 1.016876);
    path_1.cubicTo(
        size.width * 0.5154081,
        size.height * 1.019360,
        size.width * 0.4861402,
        size.height * 1.019367,
        size.width * 0.4573645,
        size.height * 1.016897);
    path_1.lineTo(size.width * 0.07517196, size.height * 0.9840922);
    path_1.cubicTo(
        size.width * 0.03307726,
        size.height * 0.9804787,
        size.width * 0.001950259,
        size.height * 0.9598918,
        size.width * 0.001950259,
        size.height * 0.9356613);
    path_1.lineTo(size.width * 0.001950259, size.height * 0.07166720);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002917109;
    paint1Stroke.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.white;
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4474393, size.height * 0.004182766);
    path_2.lineTo(size.width * 0.4906978, size.height * 0.002336188);
    path_2.cubicTo(
        size.width * 0.4973209,
        size.height * 0.002053475,
        size.width * 0.5039720,
        size.height * 0.002053475,
        size.width * 0.5105950,
        size.height * 0.002336188);
    path_2.lineTo(size.width * 0.5538567, size.height * 0.004182766);
    path_2.lineTo(size.width * 0.5538567, size.height * 0.01889078);
    path_2.cubicTo(
        size.width * 0.5538567,
        size.height * 0.02093564,
        size.width * 0.5514548,
        size.height * 0.02272855,
        size.width * 0.5479907,
        size.height * 0.02327074);
    path_2.lineTo(size.width * 0.5013520, size.height * 0.03057021);
    path_2.cubicTo(
        size.width * 0.5008910,
        size.height * 0.03064255,
        size.width * 0.5004050,
        size.height * 0.03064255,
        size.width * 0.4999408,
        size.height * 0.03057021);
    path_2.lineTo(size.width * 0.4533053, size.height * 0.02327074);
    path_2.cubicTo(
        size.width * 0.4498411,
        size.height * 0.02272855,
        size.width * 0.4474393,
        size.height * 0.02093564,
        size.width * 0.4474393,
        size.height * 0.01889078);
    path_2.lineTo(size.width * 0.4474393, size.height * 0.004182766);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffEFF1FF).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
