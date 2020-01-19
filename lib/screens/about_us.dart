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
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 85.0,
                backgroundImage: AssetImage('assets/images/morningIcon.png'),
              ),
              Text('النعيم', style: kCategoryButtonTextStyle),
              Card(
                color: Color(0xFF66b2b2),
                margin: EdgeInsets.only(
                  top: 15.0,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                //margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.web,
                    color: Colors.white,
                  ),
                  title: RichText(
                    textDirection: TextDirection.ltr,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'https://eurekaappz.com',
                          style: kCategoryButtonTextStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launch('https://eurekaappz.com');
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: Color(0xFFb2d8d8),
                margin: EdgeInsets.only(
                    top: 15.0,
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  title: RichText(
                    textDirection: TextDirection.ltr,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'hudamasoud86@gmail.com',
                          style: kCategoryButtonTextStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              sendMessage();
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: Color(0xFF66b2b2),
                margin: EdgeInsets.only(
                    top: 15.0,
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: ListTile(
                  leading: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  title: RichText(
                    textDirection: TextDirection.ltr,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Apple Store',
                          style: kCategoryButtonTextStyle,
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: Color(0xFFb2d8d8),
                margin: EdgeInsets.only(
                    top: 15.0,
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: ListTile(
                  leading: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  title: RichText(
                    textDirection: TextDirection.ltr,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Google Play',
                          style: kCategoryButtonTextStyle,
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
        )
      ],
    );
  }
}

void sendMessage() {
  String inputEmail;
  String inputMessage;
  Email email;
  email = Email(
    body: 'email body',
    subject: 'Email subject',
    recipients: ['hudamasoud86@gmail.com'],
  );
  send(email);
  debugPrint('email - > $inputEmail  message -> $inputMessage');
}

void send(Email email) async {
  print(email.recipients);
  await FlutterEmailSender.send(email);
}
