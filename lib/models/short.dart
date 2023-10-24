import 'package:equatable/equatable.dart';
import 'package:youtube/models/hashtag.dart';

class Short extends Equatable {
  final String title;
  final String thumbNailName;
  final String views;
  final List<HashTag>? hashtags;

  const Short({
    required this.title,
    required this.thumbNailName,
    required this.views,
    this.hashtags,
  });

  @override
  List<Object?> get props => [
    title,
    thumbNailName,
    views,
  ];

  @override
  bool? get stringify => true;
}