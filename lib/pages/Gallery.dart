import 'package:flutter/material.dart';

class GallerySection extends StatelessWidget {
  final List<Map<String, String>> galleryItems = [
    {
      'image': 'assets/places/italy.jpeg',
      'flag': 'assets/places/italyflag.jpeg',
    },
    {
      'image': 'assets/places/germany.jpg',
      'flag': 'assets/places/germany.png',
    },
    {
      'image': 'assets/places/turkey.jpeg',
      'flag': 'assets/places/turkeyflag.png',
    },
    {
      'image': 'assets/places/norway.jpeg',
      'flag': 'assets/places/norwayflag.jpg',
    },
    {
      'image': 'assets/places/usaplace.jpeg',
      'flag': 'assets/places/usa.jpeg',
    },
    {
      'image': 'assets/places/uk.jpg',
      'flag': 'assets/places/usa.jpeg',
    },
  ];

  GallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: Text(
              'Gallery',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics:  NeverScrollableScrollPhysics(),
              itemCount: galleryItems.length,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                final item = galleryItems[index];
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          item['image']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              item['flag']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}