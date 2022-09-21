import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelWidget extends StatelessWidget {
  const TravelWidget({Key? key, required this.location, required this.locationImage}) : super(key: key);
  final String location;
  final String locationImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.redAccent.withOpacity(0.4),

          title: Text(
            location,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          ),

        ),
        child: GestureDetector(
          onTap: () {},
          child: Image.asset(
            locationImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
