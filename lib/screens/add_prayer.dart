import 'package:flutter/material.dart';
import 'package:alnaiem/components/theket_list.dart';
import 'add_screen.dart';
import 'package:alnaiem/models/athkar.dart';
import 'package:alnaiem/util/constants.dart';

class AddPrayer extends StatefulWidget {
  @override
  _AddPrayerState createState() => _AddPrayerState();
}

class _AddPrayerState extends State<AddPrayer> {
  List<Athkar> athkar = [
    Athkar(name: 'Huda'),
    Athkar(name: 'هدهد ابو سمرة'),
  ];

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
          floatingActionButton: FloatingActionButton(
            backgroundColor: kLightButtonColor,
            child: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => AddScreen((newTitle) {
                  setState(() {
                    athkar.add(Athkar(name: newTitle, isDeleted: false));
                  });
                }),
              );
            },
          ),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(kAddPageHeaderText, style: kHeaderTextStyle),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 15.0, left: 7.0, right: 7.0),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05),
                  padding: EdgeInsets.only(
                      bottom: 10.0, top: 10.0, left: 15.0, right: 15.0),
                  decoration: BoxDecoration(
                    color: kLightButtonColor.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.black,
                    ),
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(athkar[index].name,
                            style: kCategoryButtonTextStyle),
                      );
                    },
                    itemCount: athkar.length,
                  ),
                  //child: ThekerList(athkar),
//                  child: ListView(
//                    children: <Widget>[
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Amiri',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Amiri,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Amiri',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Amiri,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Aref_Ruqaa',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Aref_Ruqaa,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Aref_Ruqaa',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Aref_Ruqaa,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Baloo_Bhaijaan',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Baloo_Bhaijaan,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Baloo_Bhaijaan',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Baloo_Bhaijaan,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Cairo',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Cairo,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Cairo',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Cairo,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + 'Changa',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Changa,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' + 'Changa',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Changa,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  El_Messiri',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.El_Messiri,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  El_Messiri',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.El_Messiri,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Harmattan',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Harmattan,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Harmattan',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Harmattan,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Jomhuria',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Jomhuria,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Jomhuria',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Jomhuria,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Katibeh',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Katibeh,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Katibeh',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Katibeh,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Lalezar',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Lalezar,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Lalezar',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Lalezar,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Lateef',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Lateef,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Lateef',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Lateef,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Lemonada',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Lemonada,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Lemonada',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Lemonada,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Mada',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Mada,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' + '  Mada',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Mada,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Markazi_Text',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Markazi_Text,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Markazi_Text',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Markazi_Text,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Mirza',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Mirza,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Mirza',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Mirza,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Rakkas',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Rakkas,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Rakkas',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Rakkas,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Reem_Kufi',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Reem_Kufi,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Reem_Kufi',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Reem_Kufi,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'بسم الله الرحمن الرحيم' + '  Scheherazade',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Scheherazade,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                      ListTile(
//                        title: Text(
//                          'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ له' +
//                              '  Scheherazade',
//                          style: TextStyle(
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                            fontFamily: ArabicFonts.Scheherazade,
//                            package: 'google_fonts_arabic',
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
