// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_evidently_feature`.
const Set<String> _awsEvidentlyFeatureSensitive = <String>{};

/// Evidently Feature Evaluation enum for `evaluation_strategy`.
extension type const EvidentlyFeatureEvaluationStrategy._(TfArg<String> _)
    implements TfArg<String> {
  EvidentlyFeatureEvaluationStrategy.variable(String name)
    : this._(TfArg.variable(name));
  EvidentlyFeatureEvaluationStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const EvidentlyFeatureEvaluationStrategy.arg(TfArg<String> arg) : this._(arg);

  static const allRules = EvidentlyFeatureEvaluationStrategy._(
    TfArgLiteral('ALL_RULES'),
  );
  static const defaultVariation = EvidentlyFeatureEvaluationStrategy._(
    TfArgLiteral('DEFAULT_VARIATION'),
  );

  static const List<EvidentlyFeatureEvaluationStrategy> values = [
    allRules,
    defaultVariation,
  ];
}

/// Typed helper for the `variations` block of
/// `aws_evidently_feature` (derived from provider schema).
@immutable
final class EvidentlyFeatureVariations {
  const EvidentlyFeatureVariations({required this.name, required this.value});

  final TfArg<String> name;

  final EvidentlyFeatureValue value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.encode(),
  };
}

/// Typed helper for the `variations.value` block of
/// `aws_evidently_feature` (derived from provider schema).
@immutable
final class EvidentlyFeatureValue {
  const EvidentlyFeatureValue({
    this.boolValue,
    this.doubleValue,
    this.longValue,
    this.stringValue,
  });

  final TfArg<String>? boolValue;

  final TfArg<String>? doubleValue;

  final TfArg<String>? longValue;

  final TfArg<String>? stringValue;

  @internal
  Map<String, Object?> encode() => {
    'bool_value': ?boolValue?.toTfJson(),
    'double_value': ?doubleValue?.toTfJson(),
    'long_value': ?longValue?.toTfJson(),
    'string_value': ?stringValue?.toTfJson(),
  };
}

/// Factory wrapper for `aws_evidently_feature`.
final class AwsEvidentlyFeature extends Resource {
  static const String tfType = 'aws_evidently_feature';

  AwsEvidentlyFeature(
    super.localName, {
    TfArg<String>? defaultVariation,
    TfArg<String>? description,
    TfArg<Map<String, String>>? entityOverrides,
    EvidentlyFeatureEvaluationStrategy? evaluationStrategy,
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
           'default_variation': ?defaultVariation,
           'description': ?description,
           'entity_overrides': ?entityOverrides,
           'evaluation_strategy': ?evaluationStrategy,
           'name': name,
           'project': project,
           'region': ?region,
           'tags': ?tags,
           'variations': TfArg.literal([
             for (final e in variations) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEvidentlyFeatureSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEvidentlyFeature>`.
  RefTo<AwsEvidentlyFeature> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `default_variation` attribute.
  TfRef<String> get defaultVariation =>
      TfRef.attribute<String>(this, 'default_variation');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `entity_overrides` attribute.
  TfRef<Map<String, String>> get entityOverrides =>
      TfRef.attribute<Map<String, String>>(this, 'entity_overrides');

  /// Reference to `evaluation_strategy` attribute.
  TfRef<String> get evaluationStrategy =>
      TfRef.attribute<String>(this, 'evaluation_strategy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
