import 'package:flutter/material.dart';

void main() {
  runApp(ProgrammingLanguagesApp());
}

class ProgrammingLanguagesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Programming Languages List',
      home: LanguageListScreen(),
    );
  }
}

class LanguageListScreen extends StatelessWidget {
  final List<Map<String, String>> languages = [
    {
      "name": "Python",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/c/c3/Python-logo-notext.svg",
    },
    {
      "name": "Java",
      "image":
          "https://upload.wikimedia.org/wikipedia/en/3/30/Java_programming_language_logo.svg",
    },
    {
      "name": "C++",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/1/18/ISO_C%2B%2B_Logo.svg",
    },
    {
      "name": "JavaScript",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png",
    },
    {
      "name": "Flutter",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png",
    },
    {
      "name": "Dart",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Created by Kavan"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12),
            color: Colors.blue.shade100,
            child: Text(
              "Programming Languages List",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  elevation: 4,
                  child: ListTile(
                    leading: Image.network(
                      languages[index]["image"]!,
                      width: 40,
                      height: 40,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.code, size: 40, color: Colors.blue);
                      },
                    ),
                    title: Text(
                      languages[index]["name"]!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Popular Programming Language"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
