extension ColorExtension on String {
  int hex() {
    return int.parse(replaceFirst('#', '0xff'));
  }
}
