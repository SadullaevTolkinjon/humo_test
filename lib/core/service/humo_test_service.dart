import 'package:humo_test_app/core/data/local_data/local_data.dart';
import 'package:humo_test_app/core/model/humo_test_model.dart';

class GetHumoTestData {
  static var datas = data;

  static getData() {
    print(datas);
    return (datas as List).map((e) => HumoTestModel.fromJson(e)).toList();
  }
}
