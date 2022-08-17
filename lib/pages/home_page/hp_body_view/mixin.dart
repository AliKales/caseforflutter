part of 'hp_body_view.dart';

mixin _Mixin on State<HPBodyView> {
  final linkTimezones = "http://worldtimeapi.org/api/timezone";

  Future<List<String>?> getTimezones() async {
    List? result = await ServiceHttp().get(linkTimezones);

    List<String>? list = result?.cast<String>();

    return list;
  }
}
