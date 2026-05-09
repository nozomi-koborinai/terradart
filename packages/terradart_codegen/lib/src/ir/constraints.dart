/// Per-attribute constraints derived from schema-json + MM YAML.
///
/// The fields are populated as follows:
/// - schema-json: required, optional, computed, sensitive, writeOnly,
///   deprecationMessage
/// - MM YAML:    forceNew (`immutable: true`), enumValues, regex, minLength,
///   maxLength, min, max
final class Constraints {
  final bool required;
  final bool optional;
  final bool computed;
  final bool sensitive;
  final bool writeOnly;
  final bool forceNew;

  /// Enum members in MM YAML order. Stage 1 emits a Dart enum when non-null.
  final List<String>? enumValues;

  /// MM YAML `validators.regex` (raw Terraform regex, mapped 1:1 to
  /// `@StringField(pattern: ...)`).
  final String? regex;

  final num? min;
  final num? max;
  final int? minLength;
  final int? maxLength;

  /// schema-json `deprecated: true` plus optional message; MM YAML may
  /// supply a richer string.
  final String? deprecationMessage;

  const Constraints({
    this.required = false,
    this.optional = false,
    this.computed = false,
    this.sensitive = false,
    this.writeOnly = false,
    this.forceNew = false,
    this.enumValues,
    this.regex,
    this.min,
    this.max,
    this.minLength,
    this.maxLength,
    this.deprecationMessage,
  });

  bool get optionalAndComputed => optional && computed;

  Constraints copyWith({
    bool? required,
    bool? optional,
    bool? computed,
    bool? sensitive,
    bool? writeOnly,
    bool? forceNew,
    List<String>? enumValues,
    String? regex,
    num? min,
    num? max,
    int? minLength,
    int? maxLength,
    String? deprecationMessage,
  }) =>
      Constraints(
        required: required ?? this.required,
        optional: optional ?? this.optional,
        computed: computed ?? this.computed,
        sensitive: sensitive ?? this.sensitive,
        writeOnly: writeOnly ?? this.writeOnly,
        forceNew: forceNew ?? this.forceNew,
        enumValues: enumValues ?? this.enumValues,
        regex: regex ?? this.regex,
        min: min ?? this.min,
        max: max ?? this.max,
        minLength: minLength ?? this.minLength,
        maxLength: maxLength ?? this.maxLength,
        deprecationMessage: deprecationMessage ?? this.deprecationMessage,
      );
}
