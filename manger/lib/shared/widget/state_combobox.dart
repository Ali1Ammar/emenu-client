import 'package:fluent_ui/fluent_ui.dart';

class ComboboxStateless<T> extends StatefulWidget {
  /// Creates a combobox button.
  ///
  /// The [items] must have distinct values. If [initvalue] isn't null then it
  /// must be equal to one of the [ComboboxItem] values. If [items] or
  /// [onChanged] is null, the button will be disabled, the down arrow
  /// will be greyed out.
  ///
  /// If [initvalue] is null and the button is enabled, [placeholder] will be displayed
  /// if it is non-null.
  ///
  /// If [initvalue] is null and the button is disabled, [disabledHint] will be displayed
  /// if it is non-null. If [disabledHint] is null, then [placeholder] will be displayed
  /// if it is non-null.
  ///
  /// The [elevation] and [iconSize] arguments must not be null (they both have
  /// defaults, so do not need to be specified). The [isExpanded] arguments must
  /// not be null.
  ///
  /// The [autofocus] argument must not be null.
  ///
  /// The [comboboxColor] argument specifies the background color of the
  /// combobox when it is open. If it is null, the current theme's
  /// [ThemeData.canvasColor] will be used instead.
  ComboboxStateless({
    Key? key,
    required this.items,
    this.selectedItemBuilder,
    this.initvalue,
    this.placeholder,
    this.disabledHint,
    this.onChanged,
    this.onTap,
    this.elevation = 8,
    this.style,
    this.icon,
    this.iconDisabledColor,
    this.iconEnabledColor,
    this.iconSize = 10.0,
    this.isExpanded = false,
    this.itemHeight = kMinInteractiveDimension,
    this.focusColor,
    this.focusNode,
    this.autofocus = false,
    this.comboboxColor,
    // When adding new arguments, consider adding similar arguments to
    // ComboboxFormField.
  })  : assert(
          items == null ||
              items.isEmpty ||
              initvalue == null ||
              items.where((ComboboxItem<T> item) {
                    return item.value == initvalue;
                  }).length ==
                  1,
          "There should be exactly one item with [Combobox]'s value: "
          '$initvalue. \n'
          'Either zero or 2 or more [ComboboxItem]s were detected '
          'with the same value',
        ),
        assert(itemHeight == null || itemHeight >= kMinInteractiveDimension),
        super(key: key);

  /// The list of items the user can select.
  ///
  /// If the [onChanged] callback is null or the list of items is null
  /// then the combobox button will be disabled, i.e. its arrow will be
  /// displayed in grey and it will not respond to input.
  final List<ComboboxItem<T>>? items;

  /// The value of the currently selected [ComboboxItem].
  ///
  /// If [value] is null and the button is enabled, [placeholder] will be displayed
  /// if it is non-null.
  ///
  /// If [value] is null and the button is disabled, [disabledHint] will be displayed
  /// if it is non-null. If [disabledHint] is null, then [placeholder] will be displayed
  /// if it is non-null.
  final T? initvalue;

  /// A placeholder widget that is displayed by the combobox button.
  ///
  /// If [value] is null and the combobox is enabled ([items] and [onChanged] are non-null),
  /// this widget is displayed as a placeholder for the combobox button's value.
  ///
  /// If [value] is null and the combobox is disabled and [disabledHint] is null,
  /// this widget is used as the placeholder.
  final Widget? placeholder;

  /// A preferred placeholder widget that is displayed when the combobox is disabled.
  ///
  /// If [value] is null, the combobox is disabled ([items] or [onChanged] is null),
  /// this widget is displayed as a placeholder for the combobox button's value.
  final Widget? disabledHint;

  /// {@template flutter.material.comboboxButton.onChanged}
  /// Called when the user selects an item.
  ///
  /// If the [onChanged] callback is null or the list of [Combobox.items]
  /// is null then the combobox button will be disabled, i.e. its arrow will be
  /// displayed in grey and it will not respond to input. A disabled button
  /// will display the [Combobox.disabledHint] widget if it is non-null.
  /// If [Combobox.disabledHint] is also null but [Combobox.placeholder] is
  /// non-null, [Combobox.placeholder] will instead be displayed.
  /// {@endtemplate}
  final ValueChanged<T?>? onChanged;

  /// Called when the combobox button is tapped.
  ///
  /// This is distinct from [onChanged], which is called when the user
  /// selects an item from the combobox.
  ///
  /// The callback will not be invoked if the combobox button is disabled.
  final VoidCallback? onTap;

  /// A builder to customize the combobox buttons corresponding to the
  /// [ComboboxItem]s in [items].
  ///
  /// When a [ComboboxItem] is selected, the widget that will be displayed
  /// from the list corresponds to the [ComboboxItem] of the same index
  /// in [items].
  ///
  /// {@tool dartpad --template=stateful_widget_scaffold}
  ///
  /// This sample shows a `Combobox` with a button with [Text] that
  /// corresponds to but is unique from [ComboboxItem].
  ///
  /// ```dart
  /// final List<String> items = <String>['1','2','3'];
  /// String selectedItem = '1';
  ///
  /// @override
  /// Widget build(BuildContext context) {
  ///   return Padding(
  ///     padding: const EdgeInsets.symmetric(horizontal: 12.0),
  ///     child: Combobox<String>(
  ///       value: selectedItem,
  ///       onChanged: (String? string) => setState(() => selectedItem = string!),
  ///       selectedItemBuilder: (BuildContext context) {
  ///         return items.map<Widget>((String item) {
  ///           return Text(item);
  ///         }).toList();
  ///       },
  ///       items: items.map((String item) {
  ///         return ComboboxItem<String>(
  ///           child: Text('Log $item'),
  ///           value: item,
  ///         );
  ///       }).toList(),
  ///     ),
  ///   );
  /// }
  /// ```
  /// {@end-tool}
  ///
  /// If this callback is null, the [ComboboxItem] from [items]
  /// that matches [value] will be displayed.
  final ComboboxBuilder? selectedItemBuilder;

  /// The z-coordinate at which to place the menu when open.
  ///
  /// The following elevations have defined shadows: 1, 2, 3, 4, 6, 8, 9, 12,
  /// 16, and 24. See [kElevationToShadow].
  ///
  /// Defaults to 8, the appropriate elevation for combobox buttons.
  final int elevation;

  /// The text style to use for text in the combobox button and the combobox
  /// menu that appears when you tap the button.
  ///
  /// To use a separate text style for selected item when it's displayed within
  /// the combobox button, consider using [selectedItemBuilder].
  ///
  /// {@tool dartpad --template=stateful_widget_scaffold}
  ///
  /// This sample shows a `Combobox` with a combobox button text style
  /// that is different than its menu items.
  ///
  /// ```dart
  /// List<String> options = <String>['One', 'Two', 'Free', 'Four'];
  /// String comboboxValue = 'One';
  ///
  /// @override
  /// Widget build(BuildContext context) {
  ///   return Container(
  ///     alignment: Alignment.center,
  ///     color: Colors.blue,
  ///     child: Combobox<String>(
  ///       value: comboboxValue,
  ///       onChanged: (String? newValue) {
  ///         setState(() {
  ///           comboboxValue = newValue!;
  ///         });
  ///       },
  ///       style: TextStyle(color: Colors.blue),
  ///       selectedItemBuilder: (BuildContext context) {
  ///         return options.map((String value) {
  ///           return Text(
  ///             comboboxValue,
  ///             style: TextStyle(color: Colors.white),
  ///           );
  ///         }).toList();
  ///       },
  ///       items: options.map<ComboboxItem<String>>((String value) {
  ///         return ComboboxItem<String>(
  ///           value: value,
  ///           child: Text(value),
  ///         );
  ///       }).toList(),
  ///     ),
  ///   );
  /// }
  /// ```
  /// {@end-tool}
  ///
  /// Defaults to the [TextTheme.subtitle1] value of the current
  /// [ThemeData.textTheme] of the current [Theme].
  final TextStyle? style;

  /// The widget to use for the drop-down button's icon.
  ///
  /// Defaults to an [Icon] with the [FluentIcons.chevron_down] glyph.
  final Widget? icon;

  /// The color of any [Icon] descendant of [icon] if this button is disabled,
  /// i.e. if [onChanged] is null.
  ///
  /// Defaults to [MaterialColor.shade400] of [Colors.grey] when the theme's
  /// [ThemeData.brightness] is [Brightness.light] and to
  /// [Colors.white10] when it is [Brightness.dark]
  final Color? iconDisabledColor;

  /// The color of any [Icon] descendant of [icon] if this button is enabled,
  /// i.e. if [onChanged] is defined.
  ///
  /// Defaults to [MaterialColor.shade700] of [Colors.grey] when the theme's
  /// [ThemeData.brightness] is [Brightness.light] and to
  /// [Colors.white70] when it is [Brightness.dark]
  final Color? iconEnabledColor;

  /// The size to use for the drop-down button's down arrow icon button.
  ///
  /// Defaults to 24.0.
  final double iconSize;

  /// Set the combobox's inner contents to horizontally fill its parent.
  ///
  /// By default this button's inner width is the minimum size of its contents.
  /// If [isExpanded] is true, the inner width is expanded to fill its
  /// surrounding container.
  final bool isExpanded;

  /// If null, then the menu item heights will vary according to each menu item's
  /// intrinsic height.
  ///
  /// The default value is [kMinInteractiveDimension], which is also the minimum
  /// height for menu items.
  ///
  /// If this value is null and there isn't enough vertical room for the menu,
  /// then the menu's initial scroll offset may not align the selected item with
  /// the combobox button. That's because, in this case, the initial scroll
  /// offset is computed as if all of the menu item heights were
  /// [kMinInteractiveDimension].
  final double? itemHeight;

  /// The color for the button's [Material] when it has the input focus.
  final Color? focusColor;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// The background color of the combobox.
  ///
  /// If it is not provided, the theme's [ThemeData.canvasColor] will be used
  /// instead.
  final Color? comboboxColor;

  @override
  _ComboboxState<T> createState() => _ComboboxState<T>();
}

class _ComboboxState<T> extends State<ComboboxStateless<T>> {
  T? currentValue;

  @override
  void initState() {
    currentValue = widget.initvalue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Combobox<T>(
      items: widget.items,
      autofocus: widget.autofocus,
      comboboxColor: widget.comboboxColor,
      disabledHint: widget.disabledHint,
      elevation: widget.elevation,
      focusColor: widget.focusColor,
      focusNode: widget.focusNode,
      icon: widget.icon,
      iconDisabledColor: widget.iconDisabledColor,
      iconEnabledColor: widget.iconEnabledColor,
      iconSize: widget.iconSize,
      isExpanded: widget.isExpanded,
      itemHeight: widget.itemHeight,
      key: widget.key,
      onChanged: (v) {
        currentValue = v;
        widget.onChanged?.call(v);
        setState(() {
          
        });
      },
      value: currentValue,
      onTap: widget.onTap,
      placeholder: widget.placeholder,
      selectedItemBuilder: widget.selectedItemBuilder,
      style: widget.style,
    );
  }
}
