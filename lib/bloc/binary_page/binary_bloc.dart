import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'binary_event.dart';
part 'binary_state.dart';

class BinaryBloc extends Bloc<BinaryEvent, BinaryState> {
  BinaryBloc() : super(BinaryInitial()) {
    on<BinaryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

