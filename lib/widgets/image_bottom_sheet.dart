import 'package:flutter/material.dart';
import '../models/gallery_item.dart';

class ImageBottomSheet extends StatelessWidget {
  final GalleryItem item;

  const ImageBottomSheet({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Container mit BoxDecoration für abgerundete Ecken
          Container(
            height: 250, // Feste Höhe für das Bild
            width: double.infinity, // Bild nimmt die gesamte Breite ein
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), // Abrundung der Ecken
              image: DecorationImage(
                image: AssetImage(item.imagePath),
                fit: BoxFit.cover, // Bild wird gleichmäßig skaliert
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            item.imageTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            item.imageDate,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8.0),

          // SingleChildScrollView für den Text
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                item.imageDescription,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
