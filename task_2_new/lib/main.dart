import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2_new/provider/list_provider.dart';
import 'package:task_2_new/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MoodListProvider()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoutes.appRouter,
      ),
    );
  }
}
