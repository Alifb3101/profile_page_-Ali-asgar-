import 'package:flutter/material.dart';

class ProfileImage extends StatefulWidget {
  final String imagePath;
  final double rad;
  final Color bgcolour;
   ProfileImage({super.key, required this.imagePath, required this.rad , this.bgcolour= Colors.white});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: widget.rad,
      backgroundImage: AssetImage(widget.imagePath),
      backgroundColor: widget.bgcolour,
    );
  }
}
