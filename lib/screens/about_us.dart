import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/theme4.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('معلومات التطبيق'),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        //onTap: onPress,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 15.0, left: 35.0, right: 35.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFb2d8d8).withOpacity(0.02),
                            borderRadius: BorderRadius.circular(10.0),
                            image: new DecorationImage(
                              image: new AssetImage(
                                  'assets/images/morningIcon.png'),
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.8),
                                  BlendMode.dstATop),
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        //onTap: onPress,
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 35.0, right: 35.0, bottom: 35.0),
                          padding: EdgeInsets.only(
                              bottom: 10.0, top: 10.0, left: 10.0, right: 10.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFb2d8d8),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: new RichText(
                            textDirection: TextDirection.rtl,
                            text: new TextSpan(
                              children: [
                                new TextSpan(
                                  text:
                                      'زوروا موقعنا للمزيد من المعلومات:' + ' ',
                                  style: kLargeButtonTextStyle,
                                ),
                                new TextSpan(
                                  text: 'إضغط هنا',
                                  style: kContactUsTextStyle,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launch('https://eurekaappz.com');
                                    },
                                ),
                                new TextSpan(
                                  text: '\n' + 'للتواصل معنا:' + ' ',
                                  style: kLargeButtonTextStyle,
                                ),
                                new TextSpan(
                                  text: 'إضغط هنا',
                                  style: kContactUsTextStyle,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      if (1 == 1) {
                                        sendMessage();
                                      }
                                    },
                                ),
                              ],
                            ),
                          ),
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

void sendMessage() {
  String inputEmail;
  String inputMessage;
  Email email;
  if (1 == 1) {
    email = Email(
      body: 'email body',
      subject: 'Email subject',
      recipients: ['hudamasoud86@gmail.com'],
    );
    send(email);
  }

//  },
//  );
  debugPrint('email - > $inputEmail  message -> $inputMessage');
}

void send(Email email) async {
  print(email.recipients);
  await FlutterEmailSender.send(email);
}
