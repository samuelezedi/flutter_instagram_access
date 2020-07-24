import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_feeds/instagram_resource.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Instagram Account'),
      ),
      body: Container(
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Login'),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.blue,
                child: RaisedButton(
                  onPressed: () async {
                    loader(context);
                    var authUrl = await Instagram().autorizationUrl;
                    print(authUrl);
                  },
                  color: Colors.blue,
                  child: Text('Instagram', style: TextStyle(fontSize: 17,color: Colors.white),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  loader(context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Dialog(

            backgroundColor: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(child: CupertinoActivityIndicator()),
              ],
            ),
          );
        });
  }
}
