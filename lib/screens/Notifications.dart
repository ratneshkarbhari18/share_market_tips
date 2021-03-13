import 'package:flutter/material.dart';
import '../templates/AppBarTemplate.dart';
import '../templates/DrawerTemplate.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(),
      appBar: AppBarTemplate("Notifications"),
      body: NotificationsPage(),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: [
                Card(
                  child: Row(
                    
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text("Nykaa",style: TextStyle(fontSize: 20.0),textAlign: TextAlign.left,),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Buy Price: ₹ 1212.23"),
                        Text("Stop Loss: ₹ 900.23"),
                      ],
                    )
                  ],
                  )
                ),
                SizedBox(height: 10.0),
                Card(
                  child: Row(
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text("Nykaa",style: TextStyle(fontSize: 20.0),textAlign: TextAlign.left,),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Buy Price: ₹ 1212.23"),
                        Text("Stop Loss: ₹ 900.23"),
                      ],
                    )
                  ],
                  )
                ),
                SizedBox(height: 10.0),
                Card(
                  child: Row(
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text("Nykaa",style: TextStyle(fontSize: 20.0),textAlign: TextAlign.left,),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Buy Price: ₹ 1212.23"),
                        Text("Stop Loss: ₹ 900.23"),
                      ],
                    )
                  ],
                  )
                ),
                SizedBox(height: 10.0),
                Card(
                  child: Row(
                    
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text("Nykaa",style: TextStyle(fontSize: 20.0),textAlign: TextAlign.left,),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Buy Price: ₹ 1212.23"),
                        Text("Stop Loss: ₹ 900.23"),
                      ],
                    )
                  ],
                  )
                ),
                SizedBox(height: 10.0),
                Card(
                  child: Row(
                    
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text("Nykaa",style: TextStyle(fontSize: 20.0),textAlign: TextAlign.left,),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text("Buy Price: ₹ 1212.23"),
                        Text("Stop Loss: ₹ 900.23"),
                      ],
                    )
                  ],
                  )
                ),
                SizedBox(height: 10.0),                
              ],
            ),
          )
        ],
      ),
    );
  }
}