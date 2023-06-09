import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          // ignore: unused_local_variable
          final textValue = textController.value.text;
          // print('button: $textValue');
          textController.clear();
          focusNode.requestFocus();
          onValue(textValue);
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) => {
        // print('Sumbit value: $value'),
        onValue(value),
        textController.clear(),
        focusNode.requestFocus()
      },
    );
  }
}
