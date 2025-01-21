import 'package:flutter/material.dart';

class CustomInputDialog extends StatefulWidget {
  final VoidCallback onCancel;
  final ValueChanged<String> onAddOrEdit;
  final String buttonText;
  final bool isAdd;
  final String? habitName;

  const CustomInputDialog(
      {super.key,
      required this.onCancel,
      required this.onAddOrEdit,
      required this.buttonText,
      required this.isAdd,
      required this.habitName});

  @override
  CustomInputDialogState createState() => CustomInputDialogState();
}

class CustomInputDialogState extends State<CustomInputDialog> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (!widget.isAdd) {
      _textController.text = widget.habitName!;
    }
    return AlertDialog(
      title: const Text('Add Habit'),
      content: TextField(
        controller: _textController,
        decoration: const InputDecoration(
          hintText: 'Give a Short Title for your Habit',
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            widget.onCancel;
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            String inputValue = _textController.text.trim();
            widget.onAddOrEdit(inputValue); // Pass the input value
            Navigator.of(context).pop();
          },
          child: Text(widget.buttonText),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
