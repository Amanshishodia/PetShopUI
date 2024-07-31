import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_shop/go_routes/go_constant.dart';
import 'package:pet_shop/main.dart';
import 'package:pet_shop/pet_detail.dart';

class MyAppRoute {
  
  GoRouter router = GoRouter(routes: [
    
    GoRoute(
      
        path: '/',
        name: MyAppRouteConstant.homeRouteName,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        }),
        //  GoRoute(
        // path: '/info',
        // name: MyAppRouteConstant.petinfo,
        // pageBuilder: (context, state) {
        //   return const MaterialPage(child: PetDetails(name: ,age,,));
        // }),
  ]);
}
