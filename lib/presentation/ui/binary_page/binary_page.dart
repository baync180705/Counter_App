import "package:flutter/material.dart";
import 'package:flutter_application_1/bloc/binary_page/binary_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../binary_page/binary_page.dart';

class BinaryPage extends StatefulWidget {
  const BinaryPage({super.key});

  @override
  State<BinaryPage> createState() => BinaryPageState();
}

class BinaryPageState extends State<BinaryPage> {
  final TextEditingController binaryController = TextEditingController();
  final RegExp binaryRegex = RegExp(r'^[01]*');
  late int binaryInput;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BinaryBloc, BinaryState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
                  title: const Text('Decimal Page'),
                  backgroundColor: Theme.of(context).colorScheme.background),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Enter Binary'),
                TextField(
                  controller: binaryController,
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: false,
                    signed: false,
                  ),
                  onChanged: (value){
                    if(!binaryRegex.hasMatch(value)){
                      setState(() {
                        binaryController.text = '';
                      });
                    }
                  binaryInput = int.parse(binaryController.text);
                  },
                ),
                ElevatedButton(
                  onPressed: (){BlocProvider.of<BinaryBloc>(context).add(SubmitClicked());},
                  child: const Center(
                  child: Text("Submit"),
                
                  )
                ),
              if (state is ShowDecimalOutputState) 
                  Text('Decimal Value: ${state.decimalOutput}'),
              ],
            )
          )
        );
      },
    );
  }
}