import 'package:alisatiyor/app/routes/app_routes.dart';
import 'package:alisatiyor/app/view/cubit/general_cubit/general_cubit_cubit.dart';
import 'package:alisatiyor/core/extensions/build_context_ext.dart';
import 'package:alisatiyor/core/extensions/on_string.dart';
import 'package:alisatiyor/core/widgets/form_field/custom_text_form_field.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView>
    with SingleTickerProviderStateMixin {
  final _signupFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<GeneralCubit, GeneralState>(
        listener: (context, state) {
          if (state.state == GeneralStates.signedin) {
            context.router.replace(HomeRoute());
          }
        },
        child: SingleChildScrollView(
          child:
              KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
            return Center(
              child: Column(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: isKeyboardVisible
                        ? context.height * 0.15
                        : context.height * 0.2,
                    child: LayoutBuilder(
                      builder: (context, constraints) => SvgPicture.asset(
                          'assets/svg/ic_signup.svg',
                          height: constraints.maxHeight),
                    ),
                  ),
                  if (!isKeyboardVisible) const SizedBox(height: 30),
                  if (!isKeyboardVisible)
                    Column(
                      children: [
                        Text(
                          'Üye Ol',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ],
                    ),
                  const SizedBox(height: 10),
                  signupForm(context),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  Form signupForm(BuildContext context) {
    return Form(
        key: _signupFormKey,
        child: Column(
          children: [
            SizedBox(
              width: context.width * 0.9,
              child: CustomTextFormField(
                labelText: 'E-posta',
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'E-posta boş olamaz';
                  } else if (!p0.isEmail) {
                    return 'Geçerli bir e-posta giriniz';
                  }
                  return null;
                },
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: context.width * 0.9,
              child: CustomTextFormField(
                labelText: 'Ad',
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'Ad boş olamaz';
                  } else if (!p0.isName) {
                    return 'Geçerli bir ad giriniz';
                  }
                  return null;
                },
                controller: _firstNameController,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: context.width * 0.9,
              child: CustomTextFormField(
                labelText: 'Soyad',
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'Soyad boş olamaz';
                  } else if (!p0.isName) {
                    return 'Geçerli bir soyad giriniz';
                  }
                  return null;
                },
                controller: _lastNameController,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: context.width * 0.9,
              child: CustomTextFormField(
                labelText: 'Telefon Numarası',
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'Telefon numarası boş olamaz';
                  } else if (!p0.isPhoneNumber) {
                    return 'Geçerli bir telefon numarası giriniz';
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
                controller: _phoneController,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: context.width * 0.9,
              child: CustomTextFormField(
                labelText: 'Şifre',
                controller: _passwordController,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'Şifre boş olamaz';
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: context.width * 0.9,
              child: CustomTextFormField(
                labelText: 'Şifre Tekrar',
                controller: _password2Controller,
                validator: (p0) {
                  if (p0 != _passwordController.text) {
                    return 'Şifreler uyuşmuyor';
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            SizedBox(
              width: context.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  if (_signupFormKey.currentState?.validate() ?? false) {
                    context.read<GeneralCubit>().signup(
                        email: _emailController.text,
                        firstName: _firstNameController.text,
                        lastName: _lastNameController.text,
                        password: _passwordController.text,
                        password2: _password2Controller.text);
                  }
                },
                child: const Text('Üye Ol'),
              ),
            ),
          ],
        ));
  }
}
