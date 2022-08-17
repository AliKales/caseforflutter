part of 'hp_body_view.dart';

mixin _Mixin on State<HPBodyView> {
  final linkTimezones = "http://worldtimeapi.org/api/timezone";

  void loadTimezones() async {
    List? result = await ServiceHttp().get(linkTimezones);

    List<String> list = result?.cast<String>() ?? [];

    Provider.of<PTimezones>(context, listen: false).setTimezones(list);
  }
}
