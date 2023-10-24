import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube/models/short.dart';
import 'package:youtube/toolkit/asset_provider.dart';

class ShortComponent extends StatelessWidget {
  final Short short;
  final double height;
  final double width;
  final int index;

  final options = const ['Report', 'Not interested', 'Send feedback'];

  const ShortComponent({
    Key? key,
    required this.short,
    required this.height,
    required this.width,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Image.asset(
              ImageAssetProvider().getShortThumbnail(index),
            ),
          ),
          Positioned(
            top: 12,
            right: 8,
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) => Container(),
                );
              },
              child: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    short.title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text('${short.views} views',
                    style: GoogleFonts.roboto(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
