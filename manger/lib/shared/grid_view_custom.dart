import 'package:fluent_ui/fluent_ui.dart';

class GridViewCustomBuilder extends StatelessWidget {
  static const gridDelegate =
      SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 350);
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  const GridViewCustomBuilder(
      {Key? key, required this.itemBuilder, required this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (_, i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: itemBuilder(_, i),
      ),
      itemCount: itemCount,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 350),
    );
  }
}

class GridViewCustom extends StatelessWidget {
  final List<Widget> children;
  const GridViewCustom({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: children
          .map((e) => Padding(
                padding: EdgeInsets.all(8),
                child: e,
              ))
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 350),
    );
  }
}
