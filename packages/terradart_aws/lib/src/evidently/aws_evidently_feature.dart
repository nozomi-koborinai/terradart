// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_evidently_feature`.
const Set<String> _awsEvidentlyFeatureSensitive = <String>{};

/// Typed helper for the `variations` block of
/// `aws_evidently_feature` (derived from provider schema).
@immutable
final class EvidentlyFeatureVariations {
  const EvidentlyFeatureVariations({required this.name, required this.value});

  final TfArg<String> name;

  final EvidentlyFeatureVariationsValue value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.encode(),
  };
}

/// Typed helper for the `variations.value` block of
/// `aws_evidently_feature` (derived from provider schema).
@immutable
final class EvidentlyFeatureVariationsValue {
  const EvidentlyFeatureVariationsValue({
    this.boolValue,
    this.doubleValue,
    this.longValue,
    this.stringValue,
  });

  final TfArg<String>? boolValue;

  final TfArg<String>? doubleValue;

  final TfArg<String>? longValue;

  final TfArg<String>? stringValue;

  Map<String, Object?> encode() => {
    if (boolValue != null) 'bool_value': boolValue!.toTfJson(),
    if (doubleValue != null) 'double_value': doubleValue!.toTfJson(),
    if (longValue != null) 'long_value': longValue!.toTfJson(),
    if (stringValue != null) 'string_value': stringValue!.toTfJson(),
  };
}

/// Factory wrapper for `aws_evidently_feature`.
final class AwsEvidentlyFeature extends Resource {
  static const String tfType = 'aws_evidently_feature';

  AwsEvidentlyFeature({
    required super.localName,
    TfArg<String>? defaultVariation,
    TfArg<String>? description,
    TfArg<Map<String, String>>? entityOverrides,
    TfArg<String>? evaluationStrategy,
    required TfArg<String> name,
    required TfArg<String> project,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required List<EvidentlyFeatureVariations> variations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultVariation != null) 'default_variation': defaultVariation,
           if (description != null) 'description': description,
           if (entityOverrides != null) 'entity_overrides': entityOverrides,
           if (evaluationStrategy != null)
             'evaluation_strategy': evaluationStrategy,
           'name': name,
           'project': project,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'variations': TfArg.literal([
             for (final e in variations) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEvidentlyFeatureSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `evaluation_rules` attribute.
  TfRef<List<Map<String, Object?>>> get evaluationRules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'evaluation_rules');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `value_type` attribute.
  TfRef<String> get valueType => TfRef.attribute<String>(this, 'value_type');
}
