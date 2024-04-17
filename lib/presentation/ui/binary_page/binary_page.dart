import "package:flutter/material.dart";

class BinaryPage extends StatefulWidget {
  const BinaryPage({super.key});

  @override
  State<BinaryPage> createState() => BinaryPageState();
}

class BinaryPageState extends State<BinaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              title: const Text('Decimal Page'),
              backgroundColor: Theme.of(context).colorScheme.background),
      body: Center(
        child: Column(children: [
          
        ],)
      )
    );
  }
}