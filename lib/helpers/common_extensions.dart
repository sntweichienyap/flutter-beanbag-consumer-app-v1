extension ValueParsing on String {
  toInt() {
    return this == null ? 0 : int.tryParse(this) ?? 0;
  }
}

extension ValueChecking on String {
  isStringEmpty() {
    return this?.isEmpty ?? true;
  }
}
