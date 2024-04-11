import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconly/iconly.dart';
import 'package:innovatrix_assesment/const/app_colors.dart';
import 'package:innovatrix_assesment/features/signup/const/signup_form_keys.dart';
import 'package:innovatrix_assesment/shared/widget/custom_text_form_form.dart';

class PhoneNumberForm extends StatelessWidget {
  const PhoneNumberForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextForm(
      hintText: 'Phone Number',
      isDense: false,
      contentPadding: null,
      name: SignupFormKeys.phoneNumber,
      keyboardType: TextInputType.emailAddress,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
      textInputAction: TextInputAction.next,
      prefixIcon: const Icon(IconlyLight.call, size: 20),
      focusedBorderColor: AppColors.kSecondaryBgColor,
      enabledBorderColor: AppColors.kSecondaryBgColor.withOpacity(0.5),
    );
  }
}
