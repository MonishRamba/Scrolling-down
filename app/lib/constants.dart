// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:hackout/views/screens/add_video_screen.dart';
import 'package:hackout/views/screens/home_screen.dart';
import 'package:hackout/views/screens/video_screen.dart';

import 'controllers/auth_controller.dart';
// import 'package:tiktok_tutorial/controllers/auth_controller.dart';
// import 'package:tiktok_tutorial/views/screens/add_video_screen.dart';
// import 'package:tiktok_tutorial/views/screens/profile_screen.dart';
// import 'package:tiktok_tutorial/views/screens/search_screen.dart';
// import 'package:tiktok_tutorial/views/screens/video_screen.dart';

List pages = [
  // VideoScreen(),
  // SearchScreen(),
  // const AddVideoScreen(),
  VideoScreen(),
  Text('Search Screen'),
  const AddVideoScreen(),
  const Text('Messages Screen'),
  Text('Profile Screen'),
  // ProfileScreen(uid: authController.user.uid),
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;