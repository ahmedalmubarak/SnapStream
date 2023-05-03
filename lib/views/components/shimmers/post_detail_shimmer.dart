import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PostDetailShimmer extends StatelessWidget {
  const PostDetailShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black54,
      highlightColor: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.65,
            color: Colors.black,
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.height * 0.30,
            height: 13,
            color: Colors.black,
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.height * 0.20,
            height: 13,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
