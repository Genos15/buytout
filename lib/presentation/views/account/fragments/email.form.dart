import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailForm extends StatefulWidget {
  const EmailForm({super.key, required this.onSubmit});

  final Future<void> Function(String) onSubmit;

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController controller;

  @override
  initState() {
    _formKey = GlobalKey<FormState>();
    controller = TextEditingController();
    super.initState();
  }

  Future<void> _submitForm() async {
    final formState = _formKey.currentState;
    if (formState == null || formState.validate() == false) {
      return;
    }

    final emailValue = controller.text;
    await widget.onSubmit(emailValue);
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
            keyboardType: TextInputType.emailAddress,
            inputFormatters: [
              FilteringTextInputFormatter.singleLineFormatter,
            ],
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Email',
              hintText: 'Enter your email',
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            validator: (emailValue) {
              if (emailValue == null || emailValue.isEmpty == true) {
                return 'Please enter your email';
              } else if (!isEmailValid(emailValue)) {
                return 'Please enter a valid email address';
              }
              return null;
            },
          ),
          const SizedBox(height: LayoutDimens.s20),
          SubmitButton(
            text: 'Se connecter',
            onPressed: () async => await _submitForm(),
          ),
        ],
      ),
    );
  }

  Pattern get emailPattern => r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';

  bool isEmailValid(String email) =>
      RegExp(emailPattern.toString()).hasMatch(email);
}
