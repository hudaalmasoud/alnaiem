import 'package:flutter/material.dart';
import 'package:alnaiem/util/constants.dart';
//import 'package:libpray/libpray.dart';

class PrayersTime extends StatefulWidget {
  // Use April 12th, 2018.
//  int year = 2018;
//  int month = 4;
//  int day = 12;
//  static final DateTime when = DateTime.utc(2020, 3, 3);
//
//  // Init settings.
//  // Set calculation method to JAKIM (Fajr: 18.0 and Isha: 20.0).
//  static final PrayerCalculationSettings settings = PrayerCalculationSettings(
//      (PrayerCalculationSettingsBuilder b) => b
//        ..calculationMethod.replace(CalculationMethod.fromPreset(
//            preset: CalculationMethodPreset
//                .departmentOfIslamicAdvancementOfMalaysia)));
//
//  // Init location info.
//  static final Geocoordinate geo = Geocoordinate((GeocoordinateBuilder b) => b
//    ..latitude = 2.0
//    ..longitude = 101.0
//    ..altitude = 2.0);
//  static final double timezone = 8.0;
//
//// Generate prayer times for one day on March 3, 2020.
//  final Prayers prayers = Prayers.on(
//      date: when, settings: settings, coordinate: geo, timeZone: timezone);
//  print(prayers.imsak);
//  print(prayers.fajr);
//  print(prayers.sunrise);
//  print(prayers.dhuha);
//  print(prayers.dhuhr);
//  print(prayers.asr);
//  print(prayers.sunset);
//  print(prayers.maghrib);
//  print(prayers.isha);
//  print(prayers.midnight);
//
//  // Generate current prayer time
//  final Prayer current = Prayer.now(settings: settings, coordinate: geo, timeZone: timezone);
//  print('${current.type}: ${current.time}');
//
//  // Generate next prayer time
//  final Prayer next = Prayer.next(settings: settings, coordinate: geo, timeZone: timezone);
//  print('${next.type}: ${next.time}');
//
//  // Generate later prayer time
//  final Prayer later = Prayer.later(settings: settings, coordinate: geo, timeZone: timezone);
//  print('${later.type}: ${later.time}');
//
//  // Generate after later prayer time
//  final Prayer afterLater = Prayer.afterLater(settings: settings, coordinate: geo, timeZone: timezone);
//  print('${afterLater.type}: ${afterLater.time}');

  @override
  _PrayersTimeState createState() => _PrayersTimeState();
}

class _PrayersTimeState extends State<PrayersTime> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          kBackgroundImage,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(kPrayersTimeHeaderText, style: kHeaderTextStyle),
              ],
            ),
          ),
          body: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    top: 50.0,
                    left: MediaQuery.of(context).size.width * 0.03,
                    right: MediaQuery.of(context).size.width * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: kButtonBorderColor,
                          width: 1.0,
                        ),
                      ),
                      color: kDarkButtonColor,
                      margin: EdgeInsets.only(
                        top: 15.0,
                        left: MediaQuery.of(context).size.width * 0.03,
                        right: MediaQuery.of(context).size.width * 0.03,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.web,
                          color: Colors.white,
                        ),
                        title: RichText(
                          textDirection: TextDirection.ltr,
                          text: TextSpan(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
