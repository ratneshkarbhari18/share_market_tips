import 'package:flutter/material.dart';
import '../templates/AppBarTemplate.dart';
import '../templates/DrawerTemplate.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(),
      appBar: AppBarTemplate("Contact Us"),
      body: ContactUsPage(),
    );
  }
}

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Image.asset("assets/images/contact.jpg"),
            SizedBox(height: 20),
            Text("Address: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, preti"),
            SizedBox(height: 20),
            Text("Contact Number: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("+919137976398"),
            SizedBox(height: 20),
            Text("Email Address: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("ratneshkarbhari74@gmail.com"),
            SizedBox(height: 30,),
            Text("Send us a Message", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                )
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Message",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                )
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              height: 50.0,
              onPressed: (){},
              color: Colors.indigo,
              child: Text("Send",style: TextStyle(color: Colors.white,fontSize: 16.0)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            ),
          ],
        ),
      ),     
    );
  }
}