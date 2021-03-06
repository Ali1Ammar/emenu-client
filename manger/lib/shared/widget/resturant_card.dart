import 'package:fluent_ui/fluent_ui.dart';
import 'package:shared/shared.dart';

class ResturantCard extends StatelessWidget {
  final Resturant resturant;
  final VoidCallback? onToggleActivate;
  const ResturantCard(
      {Key? key, required this.resturant, this.onToggleActivate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Flexible(
            child: Image.network(
              getImageUrlContext(resturant.img,context),
              
            ),
          ),
          Text(resturant.name , style: FluentTheme.of(context).typography.title  ,),
          Column(
            children: [
              Text(resturant.isDisabled ? "غير نشط" : "نشط"),
              if (onToggleActivate != null)
                Button(
                    child: Text(resturant.isDisabled ? "تفعيل" : "ايقاف"),
                    onPressed: onToggleActivate)
            ],
          )
        ],
      ),
    );
  }
}
