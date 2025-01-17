import 'package:flutter/material.dart';
import '../models/gallery_item.dart';
import '../widgets/image_bottom_sheet.dart';
import '../gallery_data.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: galleryItems.length,
        itemBuilder: (context, index) {
          final item = galleryItems[index];
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (_) => ImageBottomSheet(item: item),
              );
            },
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(item.imagePath, fit: BoxFit.cover),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      item.imageTitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
