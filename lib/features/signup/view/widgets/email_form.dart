import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconly/iconly.dart';
import 'package:innovatrix_assesment/const/app_colors.dart';
import 'package:innovatrix_assesment/features/signup/const/signup_form_keys.dart';
import 'package:innovatrix_assesment/shared/widget/custom_text_form_form.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextForm(
      hintText: 'Email',
      isDense: false,
      initialValue: 'w@w.com',
      contentPadding: null,
      name: SignupFormKeys.email,
      keyboardType: TextInputType.emailAddress,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.email(),
      ]),
      textInputAction: TextInputAction.next,
      prefixIcon: const Icon(IconlyLight.message, size: 20),
      focusedBorderColor: AppColors.kSecondaryBgColor,
      enabledBorderColor: AppColors.kSecondaryBgColor.withOpacity(0.5),
    );
  }
}
