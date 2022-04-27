import 'package:diyapp/domain/register/localizable.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class CheckBoxListValidator<T> extends FormField<T> {
  CheckBoxListValidator({
    Key? key,
    bool isSingleSelect = false,
    List<T>? selectedItems,
    required List<T> items,
    required Function onChanged,
    required FormFieldValidator<T> validator,
  }) : super(
          key: key,
          validator: validator,
          builder: (state) {
            return Column(
              children: [
                CheckboxList(
                  items: items,
                  onChanged: onChanged,
                  selectedItems: selectedItems,
                  isSingleSelect: isSingleSelect,
                ),
                Visibility(
                  visible: state.hasError,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8, left: 24, bottom: 14),
                    child: Text(
                      state.errorText ?? '',
                      // TODO: adjust error style
                      style: const TextStyle(
                        color: Colors.red,
                        fontFamily: Fonts.amalia,
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        );
}

class CheckboxList<T> extends StatefulWidget {
  const CheckboxList(
      {required this.items,
      required this.onChanged,
      this.selectedItems,
      this.isSingleSelect = false,
      Key? key})
      : super(key: key);

  final List<T> items;
  final List<T>? selectedItems;
  final Function onChanged;
  final bool isSingleSelect;

  @override
  _CheckboxListState<T> createState() => _CheckboxListState<T>();
}

class _CheckboxListState<T> extends State<CheckboxList<T>> {
  late List<T> _selectedItems;

  @override
  void initState() {
    super.initState();
    _selectedItems = widget.selectedItems ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(widget.items.length, (index) => _checkbox(index)),
    );
  }

  Widget _checkbox(int index) {
    final selectedItem = widget.items[index];
    final locale = context.localizations.locale;
    final name = (selectedItem as Localizable).toTranslatedString(locale);

    void tapItemOnList() {
      if (_selectedItems.contains(selectedItem)) {
        _selectedItems.remove(selectedItem);
      } else {
        if (widget.isSingleSelect) {
          _selectedItems.clear();
        }
        _selectedItems.add(selectedItem);
      }
      widget.onChanged(_selectedItems);
      setState(() {});
    }

    return GestureDetector(
      onTap: () {
        tapItemOnList();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
              value: _selectedItems.contains(selectedItem),
              onChanged: (_) {
                tapItemOnList();
              }),
          Flexible(
            child: Text(
              name,
              style: const TextStyle(
                fontFamily: Fonts.amalia,
              ),
            ),
          )
        ],
      ),
    );
  }
}
