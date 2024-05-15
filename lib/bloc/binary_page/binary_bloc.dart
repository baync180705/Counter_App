import 'dart:async';
import '../../presentation/ui/binary_page/binary_page.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../domain/repository/conversion_repository.dart';


part 'binary_event.dart';
part 'binary_state.dart';

class BinaryBloc extends Bloc<BinaryEvent, BinaryState> {
  BinaryBloc() : super(BinaryInitial()) {
    int decimalOutput = 0;
    int binaryInput = 0;
     @override
    Stream<BinaryState> mapEventToState (BinaryEvent event) async*{
      if (event is SubmitClicked){
        decimalOutput = binaryToDecimal(binaryInput.toString());
      }
    }

}
}
