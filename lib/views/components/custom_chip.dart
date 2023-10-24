import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:youtube/models/chip_item.dart';

class CustomChip extends StatelessWidget {
  final ChipItem chipItem;
  final bool isSelected;

  const CustomChip({
    Key? key,
    required this.chipItem,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelStyle: GoogleFonts.roboto(
        fontSize: 12,
        color: isSelected ? Colors.white : Colors.black,
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: isSelected ? HexColor('#6C6C6C') : HexColor('#CECECE'),
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      backgroundColor: isSelected ? HexColor('#3B3B3B') : HexColor('#ECECEC'),
      label: Text(
        chipItem.name,
      ),
    );
  }
}
