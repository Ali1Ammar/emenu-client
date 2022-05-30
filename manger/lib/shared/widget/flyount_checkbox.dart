import 'package:fluent_ui/fluent_ui.dart';

class FluentCheckBox<T> extends StatefulWidget {
  final List<FluentCheckBoxItem<T>> items;
  final ValueChanged<List<T>> onChangedSelected;
  final Widget Function(BuildContext context, VoidCallback opener)
      buttonBuilder;
  const FluentCheckBox(
      {Key? key,
      required this.items,
      required this.onChangedSelected,
      required this.buttonBuilder})
      : super(key: key);

  @override
  State<FluentCheckBox<T>> createState() => _FluentCheckBoxState<T>();
}

class _FluentCheckBoxState<T> extends State<FluentCheckBox<T>> {
  final flyoutController = FlyoutController();
  final checkedSet = <T>{};
  @override
  void initState() {
    for (var element in widget.items) {
      if (element.checked) {
        checkedSet.add(element.value);
      }
    }


    super.initState();
  }

  @override
  void dispose() {
    flyoutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flyout(
      controller: flyoutController,
      onClose: () {
        widget.onChangedSelected(checkedSet.toList());
      },
      content: (context) {
        return StatefulBuilder(
          builder: ((context, setState) => FlyoutContent(
              constraints: const BoxConstraints(maxWidth: 200),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.items
                    .map((e) => Checkbox(
                          checked: checkedSet.contains(e.value),
                          content: e.child,
                          onChanged: (val) {
                            setState(() {
                              if (val!) {
                                checkedSet.add(e.value);
                              } else {
                                checkedSet.remove(e.value);
                              }
                            });
                          },
                        ))
                    .toList(),
              ))),
        );
      },
      child: widget.buttonBuilder(context, flyoutController.open),
    );
  }
}

class FluentCheckBoxItem<T> {
  final Widget child;
  final bool checked;
  final T value;

  FluentCheckBoxItem(this.child, this.checked, this.value);
}
