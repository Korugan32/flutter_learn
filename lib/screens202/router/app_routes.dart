enum AppRoute {
  home("/home","Home"),
  secondPage("/secondPage", "SecondPage");
  
  const AppRoute(this.path, this.name);

  final String path;
  final String name;
}