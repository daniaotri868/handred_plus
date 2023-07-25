

import 'package:alpha_brand/features/welcoming/presentation/pages/on_board.dart';
import 'package:alpha_brand/router/nameGoRouter.dart';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../features/page_creat_account/presentation/pages/create_account.dart';
import '../features/page_start/presentation/pages/start.dart';
import '../features/welcoming/presentation/pages/splash.dart';


final _shellNavigatorKey = GlobalKey<NavigatorState>();
final _rootNavigatorKey = GlobalKey<NavigatorState>();

  class AppGoRouter{
    GoRouter router = GoRouter(
        initialLocation: '/${NameGoRouter.splash}',
        debugLogDiagnostics: true,
        navigatorKey: _rootNavigatorKey,
        routes: [
          GoRoute(
              path: '/${NameGoRouter.splash}',
              name: NameGoRouter.splash,
              parentNavigatorKey: _rootNavigatorKey,
              pageBuilder: (context, state) =>  const NoTransitionPage(child:Splash() ),
              // builder: (context, state) => Splash(),
              routes: [
                GoRoute(
                  path: NameGoRouter.welcom,
                  name: NameGoRouter.welcom,
                    parentNavigatorKey: _rootNavigatorKey,
                    pageBuilder: (context, state) => NoTransitionPage(child:onBoard() ),
                  // builder: (context, state) => onBoard(),
                  routes: [
                    GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: NameGoRouter.start,
                      name: NameGoRouter.start,
                        pageBuilder: (context, state) =>  const NoTransitionPage(child:Start() ),
                        // builder: (context, state) => Start(),
                      routes: [
                        GoRoute(
                          parentNavigatorKey: _rootNavigatorKey,
                          path: NameGoRouter.CreateAccount,
                          name:NameGoRouter.CreateAccount ,
                          pageBuilder: (context, state) =>  const NoTransitionPage(child:CreateAccount() ),
                          // builder: (context, state) => CreateAccount(),
                        )
                      ]
                    )
                  ]
                )
              ]

          )


        ]);
}