import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quality_quest/bloc/auth/auth_bloc.dart';
import 'package:quality_quest/library.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        theme: ThemeData.light(useMaterial3: true),
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: const MainHomeScreen(),
      ),
    );
  }
}
