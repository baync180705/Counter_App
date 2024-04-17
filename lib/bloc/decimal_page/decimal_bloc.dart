import 'dart:async';
import '../../presentation/ui/decimal_page/decimal_page.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../domain/repository/conversion_repository.dart';

part 'decimal_event.dart';
part 'decimal_state.dart';

class DecimalBloc extends Bloc<DecimalEvent, DecimalState> {
  DecimalBloc() : super(DecimalInitial()) {

  
    int counter =0;
    String binary = '';

    @override
    Stream<DecimalState> mapEventToState (DecimalEvent event) async*{
      if (event is IncrementEvent){
        counter ++;
        binary = decimalToBinary(counter);
      }
      else if (event is DecrementEvent){
        counter --;
        binary = decimalToBinary(counter);
      }
    yield CounterUpdates(counter);
    }


  }

  // FutureOr<void>incrementFunction(){
  //   counter++;
  // }
}


