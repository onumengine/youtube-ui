import 'package:flutter/material.dart';
import 'package:youtube/models/chip_item.dart';
import 'package:youtube/models/hashtag.dart';
import 'package:youtube/models/post.dart';
import 'package:youtube/models/short.dart';

class HomeViewModel extends ChangeNotifier {
  late List<ChipItem> _categories;
  late List<Post> _posts;
  late List<Short> _shorts;

  late ChipItem _selectedCategory;

  HomeViewModel() {
    _init();
  }

  void _init() {
    _categories = [
      const ChipItem(name: 'All'),
      const ChipItem(name: 'Freestyle Rap'),
      const ChipItem(name: 'Gaming'),
      const ChipItem(name: 'Computer programming'),
      const ChipItem(name: 'Music'),
      const ChipItem(name: 'Sports leagues'),
      const ChipItem(name: 'Podcasts'),
      const ChipItem(name: 'Tom Clancy\'s Rainbow Six Siege'),
      const ChipItem(name: 'Debates'),
      const ChipItem(name: 'Stealth games'),
      const ChipItem(name: 'Sketch comedy'),
      const ChipItem(name: 'Live'),
      const ChipItem(name: 'Game shows'),
      const ChipItem(name: 'Cristiano Ronaldo'),
    ];
    _posts = [
      Post(
        title: 'The Beauty of Existence - Heart Touching Nasheed',
        thumbnailName: 'default',
        channelAvatarName: 'default',
        views: 19210251,
        date: DateTime(2023, 8, 6),
      ),
      Post(
        title: 'The Beauty of Existence - Heart Touching Nasheed',
        thumbnailName: 'default',
        channelAvatarName: 'default',
        views: 19210251,
        date: DateTime(2023, 8, 6),
      ),
      Post(
        title: 'The Beauty of Existence - Heart Touching Nasheed',
        thumbnailName: 'default',
        channelAvatarName: 'default',
        views: 19210251,
        date: DateTime(2023, 8, 6),
      ),
      Post(
        title: 'The Beauty of Existence - Heart Touching Nasheed',
        thumbnailName: 'default',
        channelAvatarName: 'default',
        views: 19210251,
        date: DateTime(2023, 8, 6),
      ),
      Post(
        title: 'The Beauty of Existence - Heart Touching Nasheed',
        thumbnailName: 'default',
        channelAvatarName: 'default',
        views: 19210251,
        date: DateTime(2023, 8, 6),
      ),
      Post(
        title: 'The Beauty of Existence - Heart Touching Nasheed',
        thumbnailName: 'default',
        channelAvatarName: 'default',
        views: 19210251,
        date: DateTime(2023, 8, 6),
      ),
    ];
    _shorts = [
      const Short(
        title:
        'Satisfying And Relaxing | Meditation Music | Chillstep Music For Programming',
        thumbNailName: 'default',
        views: '24M',
        hashtags: [
          HashTag(text: 'CHILL'),
          HashTag(text: 'Shorts'),
          HashTag(text: 'Meditation'),
        ],
      ),
      const Short(
        title:
        'Satisfying And Relaxing | Meditation Music | Chillstep Music For Programming',
        thumbNailName: 'default',
        views: '24M',
        hashtags: [
          HashTag(text: 'CHILL'),
          HashTag(text: 'Shorts'),
          HashTag(text: 'Meditation'),
        ],
      ),
      const Short(
        title:
        'Satisfying And Relaxing | Meditation Music | Chillstep Music For Programming',
        thumbNailName: 'default',
        views: '24M',
        hashtags: [
          HashTag(text: 'CHILL'),
          HashTag(text: 'Shorts'),
          HashTag(text: 'Meditation'),
        ],
      ),
      const Short(
        title:
        'Satisfying And Relaxing | Meditation Music | Chillstep Music For Programming',
        thumbNailName: 'default',
        views: '24M',
        hashtags: [
          HashTag(text: 'CHILL'),
          HashTag(text: 'Shorts'),
          HashTag(text: 'Meditation'),
        ],
      ),
    ];
    _selectedCategory = _categories[0];
  }

  List<ChipItem> get categories => _categories;
  List<Post> get posts => _posts;
  List<Short> get shorts => _shorts;

  ChipItem get selectedCategory => _selectedCategory;

  void selectCategory(int index) {
    _selectedCategory = _categories[index];
  }
}
