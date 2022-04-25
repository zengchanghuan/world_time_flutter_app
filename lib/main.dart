import 'dart:js';

import 'package:flutter/material.dart';
import 'package:world_time_flutter_app/pages/home.dart';
import 'package:world_time_flutter_app/pages/loading.dart';
import 'package:world_time_flutter_app/pages/choose_location.dart';

void main () => runApp(MaterialApp(
  initialRoute: '/home',
  routes:{
    '/':(context) => Loading(),
    '/home':(context) => Home(),
    '/location':(context) => ChooseLocation(),
  },
));