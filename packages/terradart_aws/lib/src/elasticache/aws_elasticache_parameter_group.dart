// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elasticache_parameter_group`.
const Set<String> _awsElasticacheParameterGroupSensitive = <String>{};

/// Typed helper for the `parameter` block of
/// `aws_elasticache_parameter_group` (derived from provider schema).
@immutable
final class ElasticacheParameterGroupParameter {
  const ElasticacheParameterGroupParameter({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_elasticache_parameter_group`.
final class AwsElasticacheParameterGroup extends Resource {
  static const String tfType = 'aws_elasticache_parameter_group';

  AwsElasticacheParameterGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> family,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<ElasticacheParameterGroupParameter>? parameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'family': family,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (parameter != null)
             'parameter': TfArg.literal([
               for (final e in parameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElasticacheParameterGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsElasticacheParameterGroup>`.
  RefTo<AwsElasticacheParameterGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `family` attribute.
  TfRef<String> get familyRef => TfRef.attribute<String>(this, 'family');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
