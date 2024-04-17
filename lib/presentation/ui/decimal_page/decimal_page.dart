import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/decimal_page/decimal_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../binary_page/binary_page.dart';

class DecimalPage extends StatefulWidget {
  const DecimalPage({super.key});

  @override
  State<DecimalPage> createState() => DecimalPageState();
}

class DecimalPageState extends State<DecimalPage> {
  int _selectedIndex = 0;
  int counter =0;
  String binary = '';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DecimalBloc, DecimalState>(
      builder: (context, state) {
        if (state is CounterUpdates){
        return Scaffold(
          appBar: AppBar(
              title: const Text('Decimal Page'),
              backgroundColor: Theme.of(context).colorScheme.background),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('The current counter count is:',
                  style: TextStyle(fontSize: 18)),
              Text(counter.toString(), style: TextStyle(fontSize: 24)),
              Text("the corresponding binary is :", style : TextStyle(fontSize: 18)),
              Text(binary, style: TextStyle(fontSize: 24)),

            ],
          )),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: (){BlocProvider.of<DecimalBloc>(context).add(IncrementEvent());},
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                  height: 16),
              FloatingActionButton(
                onPressed: (){BlocProvider.of<DecimalBloc>(context).add(IncrementEvent());},
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Decimal',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.code),
                label: 'Binary',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        );

        }
        else{
          return Container();
        }
      },
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
        if (_selectedIndex == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BinaryPage()),
      );
    }
      else if (_selectedIndex == 0){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DecimalPage()),
      );
    }
  }
}








//       body: SafeArea(
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
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: _decrementCounter,
      //       tooltip: 'Decrement',
      //       child: const Icon(Icons.remove),
      //     ),
      //     const SizedBox(height: 16), // Adding some spacing between the buttons
      //     FloatingActionButton(
      //       onPressed: _incrementCounter,
      //       tooltip: 'Increment',
      //       child: const Icon(Icons.add),
      //     ),
      //   ],
      // ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        // bottomNavigationBar: BottomNavigationBar(
        // items: const <BottomNavigationBarItem>[
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.book),
        //     label: 'Decimal',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.code),
        //     label: 'Binary',
        //   ),
        // ],