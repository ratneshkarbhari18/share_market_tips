import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../templates/AppBarTemplate.dart';
import '../templates/DrawerTemplate.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerTemplate(),
        appBar: AppBarTemplate("Home"),
        body: HomePage(),
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_sharp),
            label: 'Plans',
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(Icons.account_box),
          )
        ]));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var allNotifs;

  final List<String> carouselImgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  // List colors = [Colors.red,Colors.green,Colors.blue,Colors.pink,Colors.purple,Colors.deepOrange,Colors.teal,Colors.amber,Colors.cyan,Colors.indigo];

  // List services = ["Personal Horoscope (Kundli)","Kundli Matching","Manglik Dosh","Kalsarp Dosh","Saade Saati Period","Gemstones","Graha Shanti","Remedies","Puja Recommendation", "Mantra Recommendation"];

  // Color darkBlue = HexColor("#2039b0");

  var fiveNotifs;

  Future fetchLatestFiveNotif() async {
    var url =
        "https://codesevaco.tech/share_market_app_backend/jaldi-five-notif-fetch";
    var apiKey = "5f4dbf2e5629d8cc19e7d51874266678";
    var params = {'api_key': apiKey};
    var res = await http.post(url, body: params);
    var notifsObj = res.body;
    var resBody = jsonDecode(notifsObj);
    var notifications = resBody["notifications"];
    setState(() {
      fiveNotifs = notifications;
    });
    return fiveNotifs;
  }

  @override
  void initState() {
    super.initState();
    fetchLatestFiveNotif();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        children: [
          CarouselSlider(
            options: CarouselOptions(),
            items: carouselImgList
                .map((item) => Image.network(item.toString()))
                .toList(),
          ),
          MaterialButton(
            child: Text("Todays tips"),
            onPressed: fetchLatestFiveNotif,
          ),
          Text(
            "Today's Tips",
            style: TextStyle(fontSize: 30.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: fiveNotifs.length,
            itemBuilder: (context, index) {
              return Container(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      elevation: 10.0,
                      child: Row(
                        children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text(fiveNotifs [index] ["name"],style: TextStyle(fontSize: 20.0),textAlign: TextAlign.left,),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text("Buy Price: ₹ "+fiveNotifs [index] ["buy_price"]),
                            Text("Stop Loss: ₹ "+fiveNotifs [index] ["stop_loss"]),
                            Text("Current Price: ₹ "+fiveNotifs [index] ["market_price"])
                          ],
                        )
                      ],
                      )
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
