import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';



void main() => runApp(IstvApp()

);


class IstvApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final barColor = const Color(0xff755948);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ISTV 24',
      theme: ThemeData(
//        primarySwatch: Colors.red

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  Future<void> _launched;
  String _launchUrl = "https://cdn12.henico.net:8443/live/istv24/index.m3u8";
  Future<void> _launchInApp(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {

//
//    openlive(){
//      String url = "http://cdn12.henico.net:8080/live/istv24/index.m3u8";
//      launch(url);
//    }
    openfb(){
      String url = "https://m.facebook.com/Istv24/";
      launch(url);
    }
    openinsta(){
      String url = "https://www.instagram.com/istv24/";
      launch(url);
    }
    openyt(){
      String url = "https://youtu.be/_XIRcnNVQpk";
      launch(url);
    }
    final barColor = const Color(0xffDAA520);
    return Scaffold(

        body: Center(
            child: Container(

              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [barColor, Colors.white])),

              child: Column(



                children: <Widget>[
                  Expanded(
                    child : Container(

                      child: Image.asset(
                        'assets/images/istv.png',

                        fit: BoxFit.cover,


                      ),
                    ),
                  ),


                  Expanded(
                    child: Container(
                      child :InkWell(
                          child : Image.asset(
                            'assets/images/live.png',


                            fit: BoxFit.cover,

                          ),
                          onTap: (){
                            _launchInApp(_launchUrl);
                          }
                      ),
                    ),
                  ),



                  Expanded(

                      child : Container(

                        child: Padding(
                          padding: EdgeInsets.only(top: 150),

                          child:  Row(



                            children: <Widget>[


                              Expanded(

                                child: InkWell(

                                  child:Align(



                                    child: Image.asset(''
                                        'assets/images/fb.png',

                                      height: 90,

                                      fit: BoxFit.cover,



                                    ) ,
                                  ),




                                  onTap: (){
                                    openfb();
                                  },
                                ),
                              ),

                              Expanded(
                                child: InkWell(
                                  child :Align(
//                                    alignment: Alignment.bottomCenter,

                                    child: Image.asset(''
                                        'assets/images/insta.png',

                                      height: 90,

                                      fit: BoxFit.cover,



                                    ) ,
                                  ),


                                  onTap: (){
                                    openinsta();
                                  },
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  child :Align(
//                                    alignment: Alignment.bottomCenter,

                                    child: Image.asset(''
                                        'assets/images/yt.png',

                                      height: 90,

                                      fit: BoxFit.cover,



                                    ) ,
                                  ),


                                  onTap: (){
                                    openyt();
                                  },
                                ),
                              ),

                              Expanded(
                                child: InkWell(

//                                      alignment: Alignment.bottomCenter,
                                      child: Image.asset(''
                                          'assets/images/share.png',

                                        height: 90,


                                        fit: BoxFit.cover,



                                      ) ,



                                    onTap: () {Share.share('Let me recommend you this application '
                                        'https://play.google.com/store/apps/details?id=com.istv.istv24_app');}
                                ),
                              )
                            ],
                          ),
                        ),





                      )


                  ),

                ],
              ),

            )

        )

    );


  }
}
