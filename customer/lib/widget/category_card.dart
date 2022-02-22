import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CategoryCard extends StatelessWidget {
  final MainCategory mainCategory;
  const CategoryCard({Key? key, required this.mainCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Flexible(child: SizedBox(
            width: double.maxFinite ,
            child: AspectRatio(
              aspectRatio: 5/4 ,
              child: Image.network(getImageUrl(mainCategory.img),fit: BoxFit.fitWidth ,)),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(mainCategory.title, style: Theme.of(context).textTheme.titleLarge ,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(mainCategory.desc, style: Theme.of(context).textTheme.bodyMedium ,),
          )
        ],
      ),
    );
  }
}
