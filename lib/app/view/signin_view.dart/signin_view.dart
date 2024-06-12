import 'package:alisatiyor/app/routes/app_routes.dart';
import 'package:alisatiyor/app/view/cubit/general_cubit/general_cubit_cubit.dart';
import 'package:alisatiyor/core/extensions/build_context_ext.dart';
import 'package:alisatiyor/core/extensions/on_string.dart';
import 'package:alisatiyor/core/padding/page_padding.dart';
import 'package:alisatiyor/core/widgets/form_field/custom_text_form_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SigninView extends StatelessWidget {
  SigninView({super.key});
  final _signinFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<GeneralCubit, GeneralState>(
        listener: (context, state) {
          // redirect to home page if user signed in
          if (state.state == GeneralStates.signedin) {
            context.router.push(HomeRoute());
          }
        },
        builder: (context, state) => Center(
          child: Column(
            children: [
              SvgPicture.asset('assets/svg/ic_signin.svg',
                  height: context.height * 0.2),
              const SizedBox(height: 30),
              Text(
                'Giriş Yap',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 20),
              Form(
                  key: _signinFormKey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: context.width * 0.9,
                        child: CustomTextFormField(
                          controller: _emailController,
                          labelText: 'E-posta',
                          validator: (p0) {
                            if (p0 == null || p0.isEmpty) {
                              return 'E-posta boş olamaz';
                            } else if (!p0.isEmail) {
                              return 'Geçerli bir e-posta giriniz';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: context.width * 0.9,
                        child: CustomTextFormField(
                          controller: _passwordController,
                          labelText: 'Şifre',
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
                      SizedBox(
                        width: context.width * 0.9,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_signinFormKey.currentState!.validate()) {
                              context.read<GeneralCubit>().signin(
                                  _emailController.text,
                                  _passwordController.text);
                            }
                          },
                          child: state.state == GeneralStates.loading
                              ? const CircularProgressIndicator.adaptive()
                              : const Text('Giriş Yap'),
                        ),
                      ),
                      orWidget(),
                      SizedBox(
                        width: context.width * 0.9,
                        child: ElevatedButton(
                          onPressed: () {
                            context.router.push(const SignupRoute());
                          },
                          child: const Text('Üye Ol'),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget orWidget() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Divider(indent: 20)),
        Padding(
            padding: PagePadding.allLow(), child: Text('Hesabınız yok mu?')),
        Expanded(child: Divider(endIndent: 20)),
      ],
    );
  }
}
