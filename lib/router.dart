import 'package:astria_flutter/views/dashboard.dart';
import 'package:astria_flutter/views/landing.dart';
import 'package:astria_flutter/views/login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Landing();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const Login();
          },
        ),
        GoRoute(
          path: 'dashboard',
          builder: (BuildContext context, GoRouterState state) {
            return const Dashboard();
          },
        ),
      ],
    ),
  ],
);