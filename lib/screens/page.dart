

import 'package:flutter/material.dart';
import 'package:ghostrun/screens/feed/feed.dart';
import 'package:ghostrun/screens/home/homeContent.dart';

Widget page(id) {
  if (id == 1) {
    return HomeContentScreen();
  } else if (id == 0) {
    return const FeedScreen();
  }  else {
    return HomeContentScreen();
  }
}