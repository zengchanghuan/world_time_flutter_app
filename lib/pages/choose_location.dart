import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    final url = 'https://jsonplaceholder.typicode.com/todos/1';
    
    Response response = await get(Uri.parse(url));
    Map data = convert.jsonDecode(response.body);
    print(data);
  }

  int counter = 0;
  @override
  void initState() {
    super.initState();
    getData();
    print('hey there');
  }
  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
