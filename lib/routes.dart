import 'package:animation_tutorials/contents/explicit_animations_2.dart';
import 'package:animation_tutorials/contents/explicit_animations_3.dart';
import 'package:flutter/material.dart';

import 'contents/implicit_animations_1.dart';
import 'contents/implicit_animations_2.dart';
import 'contents/explicit_animations_1.dart';

const kRouteImplicitAnimations1 = "/implicit_animations_1";
const kRouteImplicitAnimations2 = "/implicit_animations_2";
const kRouteExplicitAnimations1 = "/explicit_animations_1";
const kRouteExplicitAnimations2 = "/explicit_animations_2";
const kRouteExplicitAnimations3 = "/explicit_animations_3";

final kRoutes = <String, WidgetBuilder>{
  kRouteImplicitAnimations1: (BuildContext context) => ImplicitAnimations1(),
  kRouteImplicitAnimations2: (BuildContext context) => ImplicitAnimations2(),
  kRouteExplicitAnimations1: (BuildContext context) => ExplicitAnimations1(),
  kRouteExplicitAnimations2: (BuildContext context) => ExplicitAnimations2(),
  kRouteExplicitAnimations3: (BuildContext context) => ExplicitAnimations3(),
};