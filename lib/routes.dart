import 'package:flutter/material.dart';

import 'contents/implicit_animations_1.dart';
import 'contents/implicit_animations_2.dart';

const kRouteImplicitAnimations1 = "/implicit_animations_1";
const kRouteImplicitAnimations2 = "/implicit_animations_2";

final kRoutes = <String, WidgetBuilder>{
  kRouteImplicitAnimations1: (BuildContext context) => ImplicitAnimations1(),
  kRouteImplicitAnimations2: (BuildContext context) => ImplicitAnimations2(),
};