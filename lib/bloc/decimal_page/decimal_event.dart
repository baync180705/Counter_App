part of 'decimal_bloc.dart';

@immutable
sealed class DecimalEvent {}

class IncrementEvent extends DecimalEvent {
  int counter = 0;
}

class DecrementEvent extends DecimalEvent {}
