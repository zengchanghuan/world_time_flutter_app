import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    //simulte networi request for a username
    String username = await Future.delayed(Duration(seconds: 3),(){
      return ('yoshi');
    });

    String bio = await Future.delayed(Duration(seconds: 2),(){
      return 'vege,musician & egg collector';
    });
    print('$username - $bio');
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
