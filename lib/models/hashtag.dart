import 'package:equatable/equatable.dart';

class HashTag extends Equatable {
  final String text;

  const HashTag({required this.text});

  @override
  List<Object?> get props => [text];

  @override
  bool? get stringify => true;
}