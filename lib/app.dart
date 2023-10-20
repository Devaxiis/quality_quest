import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_quest/bloc/auth/auth_bloc.dart';
import 'package:quality_quest/bloc/logout/logout_bloc.dart';
import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/registration_screens/splash_screen/splash_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => AuthBloc(),),
        BlocProvider<LogoutBloc>(create: (context) => LogoutBloc(),),
      ],
      child: ScreenUtilInit(
          minTextAdapt: true,
          designSize: const Size(430, 932),
          child: MaterialApp(
              theme: ThemeData.light(useMaterial3: true),
              themeMode: ThemeMode.light,
              debugShowCheckedModeBanner: false,
              home: const SplashScreen(),
          ),
        ),
    );
  }
}
