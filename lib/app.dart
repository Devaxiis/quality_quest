
import 'package:quality_quest/bloc/auth/auth_bloc.dart';
import 'package:quality_quest/bloc/create_science/create_science_bloc.dart';
import 'package:quality_quest/bloc/create_science/set_image/setimage_bloc.dart';
import 'package:quality_quest/bloc/libray/library_bloc.dart';
import 'package:quality_quest/bloc/mein_home/home_bloc.dart';
import 'package:quality_quest/bloc/mein_home/profile/group_bloc.dart';
import 'package:quality_quest/bloc/selected_category/ispublic/ispublic_bloc.dart';
import 'package:quality_quest/bloc/selected_category/selected_category_bloc.dart';
import 'package:quality_quest/bloc/user_token/user_token_bloc.dart';
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
        BlocProvider<HomeBloc>(create: (context) => HomeBloc(),),
        BlocProvider<GroupBloc>(create: (context) => GroupBloc(),),
        BlocProvider<CreateScienceBloc>(create: (context) => CreateScienceBloc(),),
        BlocProvider<SelectedCategoryBloc>(create: (context) => SelectedCategoryBloc(),),
        BlocProvider<IspublicBloc>(create: (context) => IspublicBloc(),),
        BlocProvider<SetimageBloc>(create: (context) => SetimageBloc(),),
        BlocProvider<UserTokenBloc>(create: (context) => UserTokenBloc(),),
        BlocProvider<LibraryBloc>(create: (context) => LibraryBloc(),),
      ],
      child: ScreenUtilInit(
          minTextAdapt: true,
          designSize: const Size(430, 932),
          child: MaterialApp(
              theme: ThemeData.light(useMaterial3: true),
              darkTheme: ThemeData.dark(useMaterial3: true),
              themeMode: ThemeMode.light,
              debugShowCheckedModeBanner: false,
              home: const SplashScreen(),
          ),
        ),
    );
  }
}
