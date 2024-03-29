import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:project_manager/provider/doctor_list_provider.dart';
import 'package:project_manager/shared/component/constant.dart';
import 'package:provider/provider.dart';

import 'modules/login_screens/main_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DoctorProvider>(
          create: (_) => DoctorProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: false,
          appBarTheme: const AppBarTheme(
            titleSpacing: 20,
            elevation: 0.0,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            centerTitle: true,
          ),
          primarySwatch: maincolor1,
        ),
        home: const MainLogin(),
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
      ),
    );
  }
}
