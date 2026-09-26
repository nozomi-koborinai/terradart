// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_parameter_group`.
const Set<String> _awsRedshiftParameterGroupSensitive = <String>{};

/// Typed helper for the `parameter` block of
/// `aws_redshift_parameter_group` (derived from provider schema).
@immutable
final class RedshiftParameterGroupParameter {
  const RedshiftParameterGroupParameter({
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

/// Factory wrapper for `aws_redshift_parameter_group`.
final class AwsRedshiftParameterGroup extends Resource {
  static const String tfType = 'aws_redshift_parameter_group';

  AwsRedshiftParameterGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> family,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<RedshiftParameterGroupParameter>? parameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'family': family,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (parameter != null)
             'parameter': TfArg.literal([
               for (final e in parameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftParameterGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
