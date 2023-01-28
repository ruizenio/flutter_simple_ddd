import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../lib.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

void main() async {
  Intl.defaultLocale = 'id_ID';
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.dev);
  Bloc.observer = CustomBlocObserver();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()..add(AuthEvent.started())),
        BlocProvider(create: (context) => getIt<LoginBloc>()),
      ], 
      child: App(),
    ),
  );
}
