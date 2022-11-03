import 'package:flutter/material.dart';

class WallpaperViewTabbed extends StatefulWidget {
  const WallpaperViewTabbed({Key? key}) : super(key: key);

  @override
  State<WallpaperViewTabbed> createState() => _WallpaperViewTabbedState();
}

class _WallpaperViewTabbedState extends State<WallpaperViewTabbed> {
  String imageUrl = "https://images.unsplash.com/photo-1564750497011-ead0ce4b9448?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Image.network(
        height: double.infinity,
        fit: BoxFit.fill,
        imageUrl,
      ),
    );
  }
}
