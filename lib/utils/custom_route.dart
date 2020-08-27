import 'package:flutter/material.dart';

class CustomRoute<T> extends MaterialPageRoute<T> {
  //para construir uma customRoute com transition diferente, diretamente na chamada do navigator.
  CustomRoute({
    @required WidgetBuilder builder,
    RouteSettings settings,
  }) : super(
          builder: builder,
          settings: settings,
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {}
}

class CustomPageTransitionBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    /*
    Muda a transição de acordo com a rota!
    if (route.settings.name == '/') {
      return child;
    }
    */
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
