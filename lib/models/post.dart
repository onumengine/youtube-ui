import 'package:equatable/equatable.dart';

class Post extends Equatable {
  final String title;
  final String thumbnailName;
  final String channelAvatarName;
  final int views;
  final DateTime date;

  const Post({
    required this.title,
    required this.thumbnailName,
    required this.channelAvatarName,
    required this.views,
    required this.date,
  });

  @override
  List<Object?> get props => [
    title,
    thumbnailName,
    channelAvatarName,
    views,
    date,
  ];

  @override
  bool? get stringify => true;
}