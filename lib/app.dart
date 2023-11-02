import 'package:quality_quest/presentation/bloc/create_science/create_science_value/science_value_bloc.dart';
import 'package:quality_quest/presentation/bloc/get_science/get_science_bloc.dart';
import 'package:quality_quest/presentation/bloc/get_science/my_question/my_question_bloc.dart';
import 'package:quality_quest/presentation/bloc/mein_home/search/search_bloc.dart';

import 'library.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
        BlocProvider<LogoutBloc>(
          create: (context) => LogoutBloc(),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
        ),
        BlocProvider<GroupBloc>(
          create: (context) => GroupBloc(),
        ),
        BlocProvider<CreateScienceBloc>(
          create: (context) => CreateScienceBloc(),
        ),
        BlocProvider<SelectedCategoryBloc>(
          create: (context) => SelectedCategoryBloc(),
        ),
        BlocProvider<IspublicBloc>(
          create: (context) => IspublicBloc(),
        ),
        BlocProvider<SetimageBloc>(
          create: (context) => SetimageBloc(),
        ),
        BlocProvider<UserTokenBloc>(
          create: (context) => UserTokenBloc(),
        ),
        BlocProvider<LibraryBloc>(
          create: (context) => LibraryBloc(),
        ),
        BlocProvider<ScienceValueBloc>(create: (context) => ScienceValueBloc()),
        BlocProvider<SearchBloc>(create: (context) => SearchBloc()),
        BlocProvider<GetScienceBloc>(create: (context) => GetScienceBloc() ),
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
