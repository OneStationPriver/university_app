import 'package:flutter/material.dart';

class WhishlistPage extends StatefulWidget {
  const WhishlistPage({super.key});

  @override
  State<WhishlistPage> createState() => _WhishlistPageState();
}

class _WhishlistPageState extends State<WhishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Wishlist"),
    );
  }
}
