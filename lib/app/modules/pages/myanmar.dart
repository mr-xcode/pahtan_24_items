import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:pahtan_24_items/app/data/my_helper.dart';

class Myanmar extends StatefulWidget {
  const Myanmar({super.key});

  @override
  State<Myanmar> createState() => _MyanmarState();
}

class _MyanmarState extends State<Myanmar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<String>(
        future: MyHelper().loadHtmlMyan(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Html(data: snapshot.data),
            );
          } else if (snapshot.hasError) {
            return const Text('Error loading the HTML file.');
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
