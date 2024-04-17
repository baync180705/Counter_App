import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/bloc/decimal_page/decimal_bloc.dart';
import 'package:flutter_application_1/presentation/ui/decimal_page/decimal_page.dart';
import 'package:flutter_application_1/presentation/ui/binary_page/binary_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DecimalBloc, DecimalState>(
      builder: (context, state) {
        return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(255, 47, 163, 109)),
              useMaterial3: true,
            ),
            home: BlocProvider(
              create: (context) => DecimalBloc(),
              child: DecimalPage(),
            ));
      },
    );
  }
}



// class BinaryPageState extends State<BinaryPage> {
//   int _counter = 0;
//   int _selectedIndex = 0;

//     static const List<Widget> _widgetOptions = <Widget>[
//     Text('Decimal'),
//     Text('Binary'),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   void _incrementCounter() {
//     setState(() {

//       _counter++;
//     });
//   }
// void _decrementCounter() {
//     setState(() {

//       _counter--;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(

//       ),
//   body: SafeArea(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'The current counter count is:',
//               style: TextStyle(fontSize: 18),
//             ),
//             Text(
//               '$_counter',
//               style: const TextStyle(fontSize: 24),
//             ),
//           ],
//         ),
//       ),
//     ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: _decrementCounter,
//             tooltip: 'Decrement',
//             child: const Icon(Icons.remove),
//           ),
//           const SizedBox(height: 16), // Adding some spacing between the buttons
//           FloatingActionButton(
//             onPressed: _incrementCounter,
//             tooltip: 'Increment',
//             child: const Icon(Icons.add),
//           ),
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//         bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             label: 'Decimal',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.code),
//             label: 'Binary',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),

//     );
//   }
// }
