import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'newsfeeds.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(new DescriptionPage(null));

class DescriptionPage extends StatelessWidget {
  static String tag = 'description-page';
  DescriptionPage(this.urlnews);
  final String urlnews;

  final spinkit = SpinKitFadingCircle(

         color: Colors.black,

      );



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Full Article",
          style: new TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            spinkit,
            WebviewScaffold(
              url: urlnews,
            ),
          ],
        ),
      ),
    );
  }
}
