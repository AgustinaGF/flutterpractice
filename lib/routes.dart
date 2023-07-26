class Routes {
  // asi se declara un constructor privado
  Routes._();
// no es aconsejable utilizar como nombre de ruta solo / porque podemos tener un conflicto en la ruta por defecto
  static const initialRoute = splash;

  static const home = '/home';
  static const counter = '/counter';
  static const login = '/login';
  static const splash = '/splash';
  static const colorPicker = '/color_picker';
}
