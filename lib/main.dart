import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// FirebaseOptions for web
const FirebaseOptions firebaseOptions = FirebaseOptions(
  apiKey: "AIzaSyAVaO8yHXww2oZerIo2xW9piHQe2IUJXwE",
  authDomain: "tiger-u5.firebaseapp.com",
  projectId: "tiger-u5",
  storageBucket: "tiger-u5.firebasestorage.app",
  messagingSenderId: "832230723962",
  appId: "1:832230723962:web:99c027dfe7d2234e6ec6c3",
  measurementId: "G-E1DWH7ZLX4",
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: firebaseOptions, // Provide FirebaseOptions for web
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase App',
      home: PostScreen(),
    );
  }
}

// Define PostScreen
class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase App'),
      ),
      body: Center(
        child: Text('Welcome to Firebase!'),
      ),
    );
  }
}
