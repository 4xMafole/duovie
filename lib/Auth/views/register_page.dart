import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../Components/continue_button.dart';
import '../../Components/entry_field.dart';
import '../../Locale/locale.dart';
import '../../Theme/colors.dart';
import '../controllers/auth_controller.dart';
import '../login_navigator.dart';

//register page for registration of a new user
class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.signUpNow!),
      ),

      //this column contains 3 textFields and a bottom bar
      body: FadedSlideAnimation(
        RegisterForm(),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final AuthController _controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: transparentColor),
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        ),
        height: 400,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //name textField
            EntryField(
              controller: _controller.nameController,
              textCapitalization: TextCapitalization.words,
              label: locale.fullName,
            ),
            //email textField
            EntryField(
              controller: _controller.emailController,
              textCapitalization: TextCapitalization.none,
              label: locale.email,
              keyboardType: TextInputType.emailAddress,
            ),
            //phone textField
            EntryField(
              controller: _controller.phoneController,
              label: locale.phoneNumber,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            //continue button
            CustomButton(
              text: locale.continueText,
              onPressed: () {
                Navigator.pushNamed(context, LoginRoutes.verification);
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

//todo: Remove the otp text on all languages and its associated classes