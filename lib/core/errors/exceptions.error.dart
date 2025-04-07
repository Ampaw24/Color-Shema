extension StringExtensions on String{
  String get capitalise {
    if (trim().isEmpty) return this;
      return "${this[0].toUpperCase()}${substring(1)}"; 
  }
}