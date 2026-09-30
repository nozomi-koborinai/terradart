// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_outposts_outpost_instance_type`.
const Set<String> _awsOutpostsOutpostInstanceTypeSensitive = <String>{};

/// Factory wrapper for `aws_outposts_outpost_instance_type`.
final class DataAwsOutpostsOutpostInstanceType extends Data {
  static const String tfType = 'aws_outposts_outpost_instance_type';

  DataAwsOutpostsOutpostInstanceType({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? instanceType,
    TfArg<List<String>>? preferredInstanceTypes,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           'instance_type': ?instanceType,
           'preferred_instance_types': ?preferredInstanceTypes,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOutpostsOutpostInstanceTypeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arnRef => TfRef.attribute<String>(this, 'arn');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceTypeRef =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `preferred_instance_types` attribute.
  TfRef<List<String>> get preferredInstanceTypesRef =>
      TfRef.attribute<List<String>>(this, 'preferred_instance_types');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
