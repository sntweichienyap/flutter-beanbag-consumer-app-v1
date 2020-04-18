import 'dart:convert';

extension ValueParsing on String {
  toInt() {
    return this == null ? 0 : int.tryParse(this) ?? 0;
  }

  toImage() {
    return this == null ? null : base64.decode(this);
  }
}

extension ValueChecking on String {
  isStringEmpty() {
    return this?.isEmpty ?? true;
  }
}
