import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'feature/maps/view/map_select_view.dart';
import 'feature/onboard/on_board_view.dart';
import 'product/model/state/project_context.dart';
import 'product/model/state/user_context.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductContext()),
        ProxyProvider<ProductContext, UserContext?>(
          update: (context, productContext, userContext) {
            return userContext != null
                ? userContext.copyWith(name: productContext.newUserName)
                : UserContext(productContext.newUserName);
          },
        ),
      ],
      child: MaterialApp(
        title: 'Material App',
        home: MapSelectView(),
        theme: ThemeData.light().copyWith(
            appBarTheme: AppBarTheme(
                elevation: 0, backgroundColor: Colors.transparent, systemOverlayStyle: SystemUiOverlayStyle.dark),
            scaffoldBackgroundColor: Colors.grey[300],
            floatingActionButtonTheme:
                const FloatingActionButtonThemeData(backgroundColor: Color.fromRGBO(11, 23, 84, 1))),
      ),
    );
  }
}
