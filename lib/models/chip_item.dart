import 'package:equatable/equatable.dart';

class ChipItem extends Equatable {
  final String name;

  const ChipItem({required this.name});

  @override
  List<Object?> get props => [name];

  @override
  bool? get stringify => true;
}