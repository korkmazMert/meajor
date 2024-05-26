import 'package:alisatiyor/app/routes/app_routes.dart';
import 'package:alisatiyor/core/extensions/build_context_ext.dart';
import 'package:alisatiyor/core/form_field/custom_text_form_field.dart';
import 'package:alisatiyor/core/padding/page_padding.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
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
                  labelText: 'Şifre',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ),
              SizedBox(
                width: context.width * 0.9,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Giriş Yap'),
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
      )),
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
