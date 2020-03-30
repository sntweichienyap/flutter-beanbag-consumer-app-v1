extension ValueParsing on String {
  toInt() {
    return int.tryParse(this) ?? 0;
  }
}

extension ValueChecking on String {
  isEmpty() {
    return this?.isEmpty ?? true;
  }
}
