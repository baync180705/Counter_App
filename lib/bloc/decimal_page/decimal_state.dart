part of 'decimal_bloc.dart';

@immutable
sealed class DecimalState {}

final class DecimalInitial extends DecimalState {}


final class CounterInitial extends DecimalState{}
final class CounterUpdates extends DecimalState{
  final int counter;
  CounterUpdates(this.counter); 
}

