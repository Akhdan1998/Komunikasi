import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Pregnancyprogram.dart';
import 'cubit/user_cubit.dart';
import 'komunitas.dart';
import 'Business.dart';
import 'navigasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: navigasi(),
      ),
    );
  }
}

