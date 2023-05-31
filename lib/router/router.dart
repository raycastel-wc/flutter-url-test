import 'package:auto_route/auto_route.dart';

import '../screens/first_page.dart';
import '../screens/home_page.dart';
import '../screens/second_page.dart';

part 'router.gr.dart';            
              
@AutoRouterConfig()     
class AppRouter extends _$AppRouter { 

  @override
  RouteType get defaultRouteType => const RouteType.material();  
    
  @override      
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/root',
      initial: true,
      page: HomeRoute.page,
      children: [
        AutoRoute(
          path: 'one',
          page: FirstRoute.page,
        ),
        AutoRoute(
          path: 'two',
          page: SecondRoute.page,
        ),
      ]
    ),
  ];

}