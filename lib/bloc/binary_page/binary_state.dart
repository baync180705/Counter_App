part of 'binary_bloc.dart';

@immutable
sealed class BinaryState {}

final class BinaryInitial extends BinaryState{}

final class BinaryUpdate extends BinaryState {
  final int binaryUpdate;
  BinaryUpdate(this.binaryUpdate);
}
final class ShowDecimalOutputState extends BinaryState{
  final int decimalOutput;
  ShowDecimalOutputState(this.decimalOutput);
}
