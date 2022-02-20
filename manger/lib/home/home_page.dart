import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluent_ui/fluent_ui.dart' as f;
import 'package:manger/home/home_controller.dart';
import 'package:manger/login/login_provider.dart';
import 'package:manger/login/user.dart';
import 'package:manger/login/login_service.dart';

import 'package:shared/shared.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final login = ref.watch(loginProvider)!;
        final homeCont = ref.watch(homeControllerProvider);
        final user = login.user;
        return f.NavigationView(
            appBar: const f.NavigationAppBar(),
            pane: f.NavigationPane(),
            content: f.NavigationBody.builder(
                itemCount: 1,
                index: 1,
                itemBuilder: (context, i) {
                  return homeCont.map<Widget>(
                      loading: (value) => f.FilledButton(
                          child: const CenterLoading(),
                          onPressed: () {
                            ref.read(homeControllerProvider.notifier).init();
                          }),
                      loadedUserResturant: (_) {
                        return const CenterLoading(); //should ne redirect to another page via controller
                      },
                      emptyUser: (_) =>
                          const Text("توصال مع مسؤل لاضافتك لمطعم"),
                      loadedSystemAdmin: (s) {
                        if (s.resturnats.isNotEmpty) {
                          return buildButtons(login, user);
                        } else {
                          return const CenterLoading(); //should ne redirect to another page via controller
                        }
                      });
                }));
      },
    );
  }

  ListView buildButtons(ReturnLoginDto login, User user) {
    return ListView(
      children: [
        if (login.isLogedUsingDefualtValue)
          f.FilledButton(
              child: Text("قم بتغيير كلمة سر الافتراضية"), onPressed: () {}),
        if (user.isSystemAdmin)
          f.FilledButton(child: Text("ادارة النظام"), onPressed: () {}),
        if (user.resturantId != null)
          f.FilledButton(child: Text("ادارة المطعم الخاص بي"), onPressed: () {})
      ],
    );
  }
}
