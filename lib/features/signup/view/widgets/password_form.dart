import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconly/iconly.dart';
import 'package:innovatrix_assesment/const/app_colors.dart';

import 'package:innovatrix_assesment/features/signup/const/signup_form_keys.dart';
import 'package:innovatrix_assesment/shared/widget/custom_text_form_form.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({
    super.key,
  });

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextForm(
      hintText: 'Password',
      isDense: false,
      contentPadding: null,
      name: SignupFormKeys.password,
      keyboardType: TextInputType.visiblePassword,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.minLength(2),
      ]),
      textInputAction: TextInputAction.done,
      isObscureText: hidePassword,
      prefixIcon: const Icon(IconlyLight.lock, size: 20),
      focusedBorderColor: AppColors.kSecondaryBgColor,
      enabledBorderColor: AppColors.kSecondaryBgColor.withOpacity(0.5),
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            hidePassword = !hidePassword;
          });
        },
        child: Icon(
          hidePassword ? IconlyLight.hide : IconlyLight.show,
          size: 20,
        ),
      ),
    );
  }
}
