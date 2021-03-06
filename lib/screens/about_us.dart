import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:alnaiem/util/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:share/share.dart';

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
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(kAboutUsHeaderText, style: kHeaderTextStyle),
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
                    CircularProfileAvatar(
                      '',
                      child: Image.asset(
                        'assets/images/eurekalogoIcon.png',
                      ),
                      borderColor: kButtonBorderColor,
                      borderWidth: 2,
                      elevation: 2,
                      radius: 75,
                      backgroundColor: Colors.black,
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
                          left: MediaQuery.of(context).size.width * 0.03,
                          right: MediaQuery.of(context).size.width * 0.03),
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
                          left: MediaQuery.of(context).size.width * 0.03,
                          right: MediaQuery.of(context).size.width * 0.03),
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
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    //launch(KShareURL);
                                    Share.share('حمِّل تطبيق النعيم للأذكار:' +
                                        '\n' +
                                        KShareURL);
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
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: KHowTheAppsWork,
                                style: kAboutUsOurAppTextStyle,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(KEurekaAppzYoutubeURL);
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
    recipients: [kEurekaAppzEmailAddress],
  );
  send(email);
  debugPrint('email - > $inputEmail  message -> $inputMessage');
}

void send(Email email) async {
  print(email.recipients);
  await FlutterEmailSender.send(email);
}
