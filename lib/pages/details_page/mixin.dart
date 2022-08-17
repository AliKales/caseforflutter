part of 'details_page_view.dart';

mixin _Mixin on State<DetailsPageView> {
  final linkTimeZone = "http://worldtimeapi.org/api/timezone/";

  Future<ModelTimezone?> getTimezone(String timezoneId) async {
    Map<String, dynamic>? result =
        await ServiceHttp().get(linkTimeZone + timezoneId);

    if (result == null) return null;

    return ModelTimezone.fromJson(result);
  }

  ///[timezoneRegionAndName]; data will be like 'Africa/Abidjan'
  ///[firstValue] will return the Region
  String timezoneRegionAndName(String data, bool firstValue) {
    List<String> dataList = data.split("/");

    return firstValue ? dataList.first : dataList.last;
  }

  ///[getDayAbbreviation]; "Perşembe, GMT +00:00"
  String getDayAbbreviation(ModelTimezone? timezone) {
    if (timezone == null) return "";

    String gmt = "${timezone.abbreviation} ${timezone.utcOffset}";
    int? dayOfWeek = timezone.dayOfWeek;
    String day = dayOfWeek == null ? "" : days[dayOfWeek];

    return "$day, $gmt";
  }

  ///[getDate]; "Haziran 8, 2022"
  String getDate(DateTime? dateTime) {
    if (dateTime == null) return "";
    String month = months[dateTime.month];

    return "$month ${dateTime.day}, ${dateTime.year}";
  }
}
