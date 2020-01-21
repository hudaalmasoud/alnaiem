import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class AboutUs extends StatelessWidget {
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
            title: Text(kAboutUsHeaderText, style: kHeaderTextStyle),
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProfileAvatar(
                  '',
                  child: Image.asset(
                    'assets/images/morningIcon.png',
                  ),
                  borderColor: kButtonBorderColor,
                  borderWidth: 2,
                  elevation: 2,
                  radius: 75,
                ),
                Text(kAppName, style: kAppNameTextStyle),
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
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                  ),
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
                            text: KEurekaAppzSiteURL,
                            style: kAboutUsButtonTextStyle,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launch(KEurekaAppzSiteURL);
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: StadiumBorder(
                    side: BorderSide(
                      color: kButtonBorderColor,
                      width: 1.0,
                    ),
                  ),
                  color: kLightButtonColor,
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
                            text: kEurekaAppzEmailAddress,
                            style: kAboutUsButtonTextStyle,
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
                  shape: StadiumBorder(
                    side: BorderSide(
                      color: kButtonBorderColor,
                      width: 1.0,
                    ),
                  ),
                  color: kDarkButtonColor,
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
                            text: kShareAppText,
                            style: kAboutUsShareTextStyle,
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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
