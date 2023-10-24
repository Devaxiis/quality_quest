
import 'package:quality_quest/bloc/auth/auth_bloc.dart';
import 'package:quality_quest/bloc/create_science/create_science_bloc.dart';
import 'package:quality_quest/bloc/mein_home/home_bloc.dart';
import 'package:quality_quest/bloc/mein_home/profile/group_bloc.dart';
import 'package:quality_quest/library.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => AuthBloc(),),
        BlocProvider<LogoutBloc>(create: (context) => LogoutBloc(),),
        BlocProvider<HomeBloc>(create: (context) => HomeBloc(),),
        BlocProvider<GroupBloc>(create: (context) => GroupBloc(),),
        BlocProvider<CreateScienceBloc>(create: (context) => CreateScienceBloc(),),
      ],
      child: ScreenUtilInit(
          minTextAdapt: true,
          designSize: const Size(430, 932),
          child: MaterialApp(
              theme: ThemeData.light(useMaterial3: true),
              themeMode: ThemeMode.light,
              debugShowCheckedModeBanner: false,
              home: const MainHomeScreen(),
          ),
        ),
    );
  }
}
