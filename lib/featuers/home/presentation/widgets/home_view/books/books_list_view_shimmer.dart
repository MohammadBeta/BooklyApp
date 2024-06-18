import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BooksListViewShimmer extends StatelessWidget {
  const BooksListViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        enabled: true,
        baseColor: const Color.fromARGB(255, 224, 223, 223),
        highlightColor: const Color.fromARGB(255, 255, 255, 255),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              AspectRatio(
                aspectRatio: 2.6 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 213, 213),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              AspectRatio(
                aspectRatio: 2.6 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 213, 213),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              AspectRatio(
                aspectRatio: 2.6 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 213, 213),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              AspectRatio(
                aspectRatio: 2.6 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 213, 213),
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ],
          ),
        ));
  }
}
