import 'package:buytout/config/index.dart';
import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeForm extends StatefulWidget {
  const CodeForm({super.key, required this.onSubmit});

  final Future<void> Function(String) onSubmit;

  @override
  State<CodeForm> createState() => _CodeFormState();
}

class _CodeFormState extends State<CodeForm> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController controller;
  late bool invalidCodeError;

  @override
  initState() {
    _formKey = GlobalKey<FormState>();
    controller = TextEditingController();
    invalidCodeError = false;
    super.initState();
  }

  Future<void> _submitForm() async {
    final formState = _formKey.currentState;
    if (formState == null || formState.validate() == false) {
      return;
    }

    final validationCode = sanitize(controller.text);
    await widget.onSubmit(validationCode);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextFormField(
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(
              signed: true,
              decimal: false,
            ),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              DigitTextInputFormatter()
            ],
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Code de validation',
              hintText: '× - × - × - ×',
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            validator: (code) {
              if (code == null || code.isEmpty == true) {
                return 'Please enter your code';
              } else if (!isDigitOnly(code)) {
                return 'Please enter a valid numeric code';
              }
              return null;
            },
          ),
          const SizedBox(height: LayoutDimens.s20),
          SubmitButton(
            text: 'Verifier',
            onPressed: () async => await _submitForm(),
          ),
        ],
      ),
    );
  }

  String sanitize(String input) =>
      input.replaceAll(' ', '').replaceAll('-', '');

  bool isDigitOnly(String inputStr) {
    return RegExp(r'^\d+$').hasMatch(sanitize(inputStr));
  }
}
