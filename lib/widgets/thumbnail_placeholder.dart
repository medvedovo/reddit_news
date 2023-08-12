import 'package:flutter/material.dart';

class ThumbnailPlaceholder extends StatelessWidget {
  const ThumbnailPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      alignment: Alignment.center,
      color: Colors.grey,
      child: const Icon(Icons.image),
    );
  }
}
