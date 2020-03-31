extension ValueParsing on String {
  toInt() {
    return this == null ? 0 : int.tryParse(this) ?? 0;
  }
}

extension ValueChecking on String {
  isEmpty() {
    return this?.isEmpty ?? true;
  }
}
