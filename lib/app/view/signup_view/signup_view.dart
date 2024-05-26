import 'package:alisatiyor/core/extensions/build_context_ext.dart';
import 'package:alisatiyor/core/widgets/form_field/custom_text_form_field.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SvgPicture.asset('assets/svg/ic_signup.svg',
                height: context.height * 0.2),
            const SizedBox(height: 30),
            Column(
              children: [
                Text(
                  'Üye Ol',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 10),
                signupForm(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Form signupForm(BuildContext context) {
    return Form(
        child: Column(
      children: [
        SizedBox(
          width: context.width * 0.9,
          child: const CustomTextFormField(
            labelText: 'E-posta',
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: context.width * 0.9,
          child: const CustomTextFormField(
            labelText: 'Telefon Numarası',
            keyboardType: TextInputType.phone,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: context.width * 0.9,
          child: const CustomTextFormField(
            labelText: 'Şifre',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: context.width * 0.9,
          child: const CustomTextFormField(
            labelText: 'Şifre Tekrar',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
          ),
        ),
        SizedBox(
          width: context.width * 0.9,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Üye Ol'),
          ),
        ),
      ],
    ));
  }
}
