import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:youtube/models/post.dart';
import 'package:youtube/toolkit/asset_provider.dart';

class PostComponent extends StatelessWidget {
  final Post post;
  final int index;
  final double width;
  final _menuItems = const [
    'Play next in queue',
    'Save to Watch later',
    'Save to playlist',
    'Download video',
    'Share',
    'Not interested',
    'Don\'t recommend chanel',
    'Report',
  ];

  const PostComponent({
    Key? key,
    required this.post,
    required this.index,
    required this.width,
  }) : super(key: key);

  String getSubtitleText() {
    final formatter = NumberFormat.decimalPattern('hi');
    final formattedViews = formatter.format(post.views);
    return '$formattedViews views ⋅ Jul ${post.date.day} ${post.date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          ImageAssetProvider().getPostThumbnail(index),
          width: width,
          fit: BoxFit.fitWidth,
        ),
        Container(
          width: width,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12) + const EdgeInsets.only(bottom: 6),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImageAssetProvider().getChannelAvatar(index),
                height: 36,
                width: 36,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      softWrap: true,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      getSubtitleText(),
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: HexColor('#6C6C6C'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (_) => Container(),
                  );
                },
                icon: Icon(
                  Icons.more_vert,
                  color: HexColor('#0A0A0A'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
