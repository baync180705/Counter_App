part of 'binary_bloc.dart';

@immutable
sealed class BinaryEvent {}

class SubmitClicked extends BinaryEvent{
  int binaryInput = 0;
  
}

