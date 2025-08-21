import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

enum ShimmerType {
  verticalList,
  horizontalList,
  listTile,
  grid,
}

class CustomShimmerList extends StatelessWidget {
  final ShimmerType type;
  final int itemCount;
  final double height;
  final double width;

  const CustomShimmerList({
    Key? key,
    required this.type,
    this.itemCount = 5,
    this.height = 100,
    this.width = double.infinity,
  }) : super(key: key);

  Widget _buildVerticalItem() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildHorizontalItem() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: height,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildGridItem() {
    return Container(
      margin: const EdgeInsets.all(8),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildListTileItem() {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.grey[300],
      ),
      title: Container(
        height: 14,
        width: 100,
        color: Colors.grey[300],
      ),
      subtitle: Container(
        margin: const EdgeInsets.only(top: 4),
        height: 10,
        width: 150,
        color: Colors.grey[300],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: type == ShimmerType.horizontalList
          ? SizedBox(
              height: height,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemCount,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemBuilder: (_, __) => _buildHorizontalItem(),
              ),
            )
          : type == ShimmerType.grid
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1,
                  ),
                  itemCount: itemCount,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, __) => _buildGridItem())
              : ListView.builder(
                  itemCount: itemCount,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, __) {
                    if (type == ShimmerType.listTile) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: _buildListTileItem(),
                      );
                    } else {
                      return _buildVerticalItem();
                    }
                  },
                ),
    );
  }
}
