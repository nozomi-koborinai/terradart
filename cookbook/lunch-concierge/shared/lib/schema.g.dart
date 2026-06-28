// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class LunchRequest {
  /// Creates a [LunchRequest] from a JSON map.
  factory LunchRequest.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  LunchRequest._(this._json);

  LunchRequest({
    required String area,
    required String mood,
    required int budgetYen,
  }) {
    _json = {'area': area, 'mood': mood, 'budgetYen': budgetYen};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [LunchRequest].
  static const SchemanticType<LunchRequest> $schema =
      _LunchRequestTypeFactory();

  String get area {
    return _json['area'] as String;
  }

  set area(String value) {
    _json['area'] = value;
  }

  String get mood {
    return _json['mood'] as String;
  }

  set mood(String value) {
    _json['mood'] = value;
  }

  int get budgetYen {
    return _json['budgetYen'] as int;
  }

  set budgetYen(int value) {
    _json['budgetYen'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [LunchRequest] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _LunchRequestTypeFactory extends SchemanticType<LunchRequest> {
  const _LunchRequestTypeFactory();

  @override
  LunchRequest parse(Object? json) {
    return LunchRequest._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
        name: 'LunchRequest',
        definition: $Schema.object(
          properties: {
            'area': $Schema.string(
              description: 'Area or station where the user wants to eat.',
              minLength: 1,
              maxLength: 40,
            ),
            'mood': $Schema.string(
              description: 'Current lunch mood, such as light, spicy, or warm.',
              minLength: 1,
              maxLength: 40,
            ),
            'budgetYen': $Schema.integer(
              description: 'Expected budget in Japanese yen.',
              minimum: 300,
              maximum: 10000,
            ),
          },
          required: ['area', 'mood', 'budgetYen'],
        ).value,
        dependencies: [],
      );
}

base class LunchSuggestion {
  /// Creates a [LunchSuggestion] from a JSON map.
  factory LunchSuggestion.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  LunchSuggestion._(this._json);

  LunchSuggestion({
    required String name,
    required String reason,
    required int estimatedPriceYen,
  }) {
    _json = {
      'name': name,
      'reason': reason,
      'estimatedPriceYen': estimatedPriceYen,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [LunchSuggestion].
  static const SchemanticType<LunchSuggestion> $schema =
      _LunchSuggestionTypeFactory();

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  String get reason {
    return _json['reason'] as String;
  }

  set reason(String value) {
    _json['reason'] = value;
  }

  int get estimatedPriceYen {
    return _json['estimatedPriceYen'] as int;
  }

  set estimatedPriceYen(int value) {
    _json['estimatedPriceYen'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [LunchSuggestion] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _LunchSuggestionTypeFactory extends SchemanticType<LunchSuggestion> {
  const _LunchSuggestionTypeFactory();

  @override
  LunchSuggestion parse(Object? json) {
    return LunchSuggestion._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
        name: 'LunchSuggestion',
        definition: $Schema.object(
          properties: {
            'name': $Schema.string(minLength: 1, maxLength: 80),
            'reason': $Schema.string(minLength: 1, maxLength: 240),
            'estimatedPriceYen': $Schema.integer(minimum: 0, maximum: 50000),
          },
          required: ['name', 'reason', 'estimatedPriceYen'],
        ).value,
        dependencies: [],
      );
}

base class LunchResponse {
  /// Creates a [LunchResponse] from a JSON map.
  factory LunchResponse.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  LunchResponse._(this._json);

  LunchResponse({
    required String message,
    required List<LunchSuggestion> suggestions,
  }) {
    _json = {
      'message': message,
      'suggestions': suggestions.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [LunchResponse].
  static const SchemanticType<LunchResponse> $schema =
      _LunchResponseTypeFactory();

  String get message {
    return _json['message'] as String;
  }

  set message(String value) {
    _json['message'] = value;
  }

  List<LunchSuggestion> get suggestions {
    return (_json['suggestions'] as List)
        .map((e) => LunchSuggestion.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set suggestions(List<LunchSuggestion> value) {
    _json['suggestions'] = value.toList();
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [LunchResponse] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _LunchResponseTypeFactory extends SchemanticType<LunchResponse> {
  const _LunchResponseTypeFactory();

  @override
  LunchResponse parse(Object? json) {
    return LunchResponse._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
        name: 'LunchResponse',
        definition: $Schema.object(
          properties: {
            'message': $Schema.string(minLength: 1, maxLength: 400),
            'suggestions': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/LunchSuggestion'}),
            ),
          },
          required: ['message', 'suggestions'],
        ).value,
        dependencies: [LunchSuggestion.$schema],
      );
}
