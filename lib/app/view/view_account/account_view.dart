import 'package:alisatiyor/app/routes/app_routes.dart';
import 'package:alisatiyor/app/themes/theme_manager.dart';
import 'package:alisatiyor/app/view/cubit/general_cubit/general_cubit_cubit.dart';
import 'package:alisatiyor/app/view/cubit/messages_cubit/messages_cubit.dart';
import 'package:alisatiyor/core/extensions/build_context_ext.dart';
import 'package:alisatiyor/core/snackbar/snackbar_messenger_mixin.dart';
import 'package:alisatiyor/core/widgets/alert_dialog/custom_alert_dialog.dart';
import 'package:alisatiyor/core/widgets/form_field/custom_text_form_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AccountView extends StatelessWidget with SnackBarMessengerMixin {
  AccountView({super.key});
  final _themeManager = ThemeManager.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder<GeneralCubit, GeneralState>(
          builder: (context, state) {
            return Column(
              children: [
                if (state.state != GeneralStates.signedin &&
                    state.state != GeneralStates.loading)
                  ListTile(
                    title: const Text('Giriş Yap'),
                    trailing: const Icon(Icons.login),
                    onTap: () {
                      context.router.push(SigninRoute());
                    },
                  ),
                if (state.state == GeneralStates.signedin &&
                    state.accountInfo != null)
                  ListTile(
                    title: const Text('Profili Düzenle'),
                    trailing: const Icon(Icons.edit),
                    onTap: () {
                      CustomAlertDialog.showAlertDialog(
                          context: context,
                          title: const Text('Profili Düzenle'),
                          content: SizedBox(
                            width: context.width * 0.8,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomTextFormField(
                                    labelText: 'Email',
                                    hintText:
                                        state.accountInfo?.user?.email ?? '',
                                  ),
                                  const SizedBox(height: 10),
                                  CustomTextFormField(
                                    labelText: 'Ad',
                                    hintText:
                                        state.accountInfo?.user?.firstName ??
                                            '',
                                  ),
                                  const SizedBox(height: 10),
                                  CustomTextFormField(
                                    labelText: 'Soyad',
                                    hintText:
                                        state.accountInfo?.user?.lastName ?? '',
                                  ),
                                ]),
                          ),
                          confirmText: 'Kaydet');
                    },
                  ),
                ListenableBuilder(
                  listenable: _themeManager,
                  builder: (context, child) => ListTile(
                    title: const Text('Karanlık Mod'),
                    trailing: Switch.adaptive(
                      value: _themeManager.themeMode == ThemeMode.dark,
                      onChanged: (value) {
                        _themeManager.toggleTheme(
                            _themeManager.themeMode == ThemeMode.dark
                                ? ThemeMode.light
                                : ThemeMode.dark);
                      },
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Canlı Destek'),
                  trailing: const Icon(Icons.chat_rounded),
                  onTap: () {
                    if (state.state == GeneralStates.signedin) {
                      if (state.isSuperuser ?? false) {
                        context.router.push(const AdminLiveSupportRoute());
                      } else {
                        context.router.push(
                          LiveSupportRoute(
                              messagesCubit: context.read<MessagesCubit>()),
                        );
                      }
                    } else {
                      messenger.showSnackBar(
                          message:
                              'Canlı desteği kullanabilmek için giriş yapmalısınız.');
                    }
                  },
                ),
                // ListenableBuilder(
                //   listenable: _localizationManager,
                //   builder: (context, child) => ListTile(
                //     title: const Text('Dil'),
                //     trailing: DropdownButton(
                //       isDense: true,
                //       underline: const SizedBox.shrink(),
                //       value: _localizationManager.currentLanguage,
                //       items: Language.values
                //           .map((e) => DropdownMenuItem(
                //                 value: e,
                //                 child: Text(e.name),
                //               ))
                //           .toList(),
                //       onChanged: (value) {
                //         if (value != null &&
                //             value != _localizationManager.currentLanguage) {
                //           _localizationManager.changeLanguage(value);
                //         }
                //       },
                //     ),
                //   ),
                // ),
                if (state.state == GeneralStates.signedin &&
                    state.accountInfo != null)
                  ListTile(
                    title: const Text('Çıkış Yap'),
                    trailing: const Icon(Icons.logout),
                    onTap: () {
                      CustomAlertDialog.showAlertDialog(
                          context: context,
                          title: const Text('Çıkış Yap'),
                          content: const Text(
                              'Çıkış yapmak istediğinize emin misiniz?'),
                          confirmText: 'Çıkış Yap',
                          onConfirm: () {
                            context.read<GeneralCubit>().signout();
                            context.router.maybePop();
                          });
                    },
                  ),
                // ElevatedButton(
                //     onPressed: () {
                //       messenger.showSnackBar(
                //           message: AppLocalizations.of(context)!.greeting);
                //     },
                //     child: Text(
                //       AppLocalizations.of(context)!.showSnackbar,
                //     ))
              ],
            );
          },
        ),
      ),
    );
  }
}
