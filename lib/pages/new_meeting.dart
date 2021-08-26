import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewMeeting extends StatelessWidget {
  const NewMeeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  child: Icon(Icons.arrow_back_ios_new_sharp, size: 35),
                  onTap: Get.back,
                ),
              ),
            SizedBox(height: 50),
            Image.network(
              "https://user-images.githubusercontent.com/67534990/127776392-8ef4de2d-2fd8-4b5a-b98b-ea343b19c03e.png",
              fit: BoxFit.cover,
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              "Enter meeting code below",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
              ),
                child: ListTile(
                  leading: Icon(Icons.link),
                  title: SelectableText(
                    "askdska",
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  trailing: Icon(Icons.copy),
                )
              ),
            ),
            Divider(thickness: 1,height: 40,indent:20, endIndent: 20),
            ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.arrow_drop_down),
            label: Text("Share invite"),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(350, 30),
              primary: Colors.indigo,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
          SizedBox(height:20),
          OutlinedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.video_call),
            label: Text("start call"),
            style: OutlinedButton.styleFrom(
              primary: Colors.indigo,
              side: BorderSide(color: Colors.indigo),
              fixedSize: Size(350, 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
