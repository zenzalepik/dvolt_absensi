import 'package:dyvolt_employee/utils/colors.dart';
import 'package:dyvolt_employee/utils/fonts.dart';
import 'package:dyvolt_employee/utils/icons.dart';
import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String hintText;
  final String labelText;
  final ValueChanged<String>? onChanged;

  const TextInput({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.onChanged,
  }) : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    final labelColor =
        _isFocused ? AppColors.primaryColor : AppColors.blackColor;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isFocused = true;
            });
          },
          child: AnimatedDefaultTextStyle(
            style: TextStyles.textLabelInput().copyWith(color: labelColor),
            duration: const Duration(milliseconds: 200),
            child: Text(
              widget.labelText,
            ),
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          style: TextStyles.textInputActive(),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            hintText: widget.hintText,
            hintStyle: TextStyles.textPlaceholderInput(),
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.inputBorder,
              ),
            ),
          ),
          onChanged: widget.onChanged,
          onTap: () {
            setState(() {
              _isFocused = true;
            });
          },
          onEditingComplete: () {
            setState(() {
              _isFocused = false;
            });
          },
          onSubmitted: (value) {
            setState(() {
              _isFocused = false;
            });
          },
        ),
      ],
    );
  }
}

//
//

class PasswordInput extends StatefulWidget {
  final String hintText;
  final String labelText;
  final ValueChanged<String>? onChanged;

  const PasswordInput({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.onChanged,
  }) : super(key: key);

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedBuilder(
          animation: _focusNode,
          builder: (context, child) {
            final labelColor = _focusNode.hasFocus
                ? AppColors.primaryColor
                : AppColors.blackColor;
            return Text(
              widget.labelText,
              style: TextStyles.textLabelInput().copyWith(color: labelColor),
            );
          },
        ),
        const SizedBox(height: 8),
        TextField(
          focusNode: _focusNode,
          obscureText: true,
          style: TextStyles.textInputActive(),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            hintText: widget.hintText,
            hintStyle: TextStyles.textPlaceholderInput(),
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.inputBorder,
              ),
            ),
          ),
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}

//
//
class Button extends StatelessWidget {
  final String labelText;
  final VoidCallback onPressed;

  const Button({
    Key? key,
    required this.labelText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, elevation: 0, backgroundColor: AppColors.primaryColor,
        minimumSize: const Size(double.infinity, 58),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: SizedBox(
          width: double.infinity,
          height: 22,
          child: Text(labelText,
              textAlign: TextAlign.center, style: TextStyles.textButton())),
    );
  }
}

class ButtonMedium extends StatelessWidget {
  final String labelText;
  final VoidCallback onPressed;

  const ButtonMedium({
    Key? key,
    required this.labelText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, elevation: 0, backgroundColor: AppColors.primaryColor,
        minimumSize: const Size(double.infinity, 48),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: SizedBox(
          width: double.infinity,
          height: 22,
          child: Text(labelText,
              textAlign: TextAlign.center, style: TextStyles.textButton())),
    );
  }
}

class ButtonCustom extends StatelessWidget {
  final String labelText;
  final VoidCallback onPressed;

  const ButtonCustom({
    Key? key,
    required this.labelText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, elevation: 0, backgroundColor: AppColors.primaryColor,
        minimumSize: const Size(double.infinity, 58),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: SizedBox(
          width: double.infinity,
          height: 22,
          child: Text(labelText,
              textAlign: TextAlign.center, style: TextStyles.textButton())),
    );
  }
}

//
//

class TextButtonCustom extends StatefulWidget {
  final String labelText;
  final VoidCallback onPressed;

  const TextButtonCustom({
    Key? key,
    required this.labelText,
    required this.onPressed,
  }) : super(key: key);

  @override
  _TextButtonCustomState createState() => _TextButtonCustomState();
}

class _TextButtonCustomState extends State<TextButtonCustom> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: (TapDownDetails details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (TapUpDetails details) {
        setState(() {
          isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: SizedBox(
        height: 32,
        child: Text(widget.labelText,
            textAlign: TextAlign.center,
            style: TextStyles.text20px600(
              color:
                  isPressed ? AppColors.primaryColor : AppColors.greyBlackColor,
            )),
      ),
    );
  }
}
//
//

class DropdownW extends StatefulWidget {
  final List<String> items;
  final Function(String) onChanged;
  final String labelText;

  const DropdownW({super.key, 
    required this.items,
    required this.onChanged,
    this.labelText = '',
  });

  @override
  _DropdownWState createState() => _DropdownWState();
}

class _DropdownWState extends State<DropdownW> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showDropdown,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(6),
          color: AppColors.primaryColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Container(),
            ),
            Text(
              _selectedItem ?? widget.labelText,
              textAlign: TextAlign.center,
              style: TextStyles.text16px700(color: AppColors.whiteColor),
            ),
            const CustomIcon(
              iconName: 'icon_arrow_down',
              size: 24,
              color: AppColors.whiteColor,
            ),
            Flexible(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }

  void _showDropdown() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: ListView(
            shrinkWrap: true,
            children: widget.items.map((String item) {
              return ListTile(
                title: Text(item),
                onTap: () {
                  setState(() {
                    _selectedItem = item;
                  });
                  widget.onChanged(item);
                  Navigator.pop(
                      context); // Menutup BottomSheet setelah memilih item
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
