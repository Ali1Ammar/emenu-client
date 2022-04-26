import 'package:auto_size_text/auto_size_text.dart';
import 'package:customer/shared/context_helper.dart';
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
              child: Image.network(getImageUrl(mainCategory.img, context.riverpod.read),fit: BoxFit.fitWidth ,)),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: AutoSizeText(mainCategory.title, style: Theme.of(context).textTheme.titleLarge ,maxLines: 1),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: AutoSizeText(mainCategory.desc, style: Theme.of(context).textTheme.bodyMedium ,maxLines: 2,),
          )
        ],
      ),
    );
  }
}
