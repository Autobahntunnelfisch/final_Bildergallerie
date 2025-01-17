import 'package:flutter/material.dart';
import 'gallery_data.dart'; // GalleryItems importieren

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: ListView.builder(
        itemCount: galleryItems.length,
        itemBuilder: (context, index) {
          final item = galleryItems[index];
          return GestureDetector(
            onTap: () {
              // Handle onTap
            },
            child: Card(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(item.imagePath),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.imageTitle,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      item.imageDate,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.imageDescription,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
