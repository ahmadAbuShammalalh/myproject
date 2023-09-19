import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);
  @override
  State<Test> createState() => _TestState();
}
class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    getData() async{
        String url = 'https://basharapps.site/api/signup/captain';
        http.Response response = await  http.post(Uri.parse(url),
        body: {
            "captain_name": "khaled",
            "mobile_number": "0592757091",
            "date_of_birth": "2019-07-23",
            "id_number": "40717369",
            "address": "rafah",
            'description':'gfyginjvgf',
            "status": "0",
            "city_id": "2",
        });
        Map<String,dynamic> responseBody = jsonDecode(response.body);
        print('${responseBody['message']}');
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: (){
                     getData();
            }, child: const Text('Get Data')),
          ],
        ),
      ),
    );
  }
}
