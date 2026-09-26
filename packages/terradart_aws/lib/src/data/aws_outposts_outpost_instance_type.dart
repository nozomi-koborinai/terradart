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
           if (instanceType != null) 'instance_type': instanceType,
           if (preferredInstanceTypes != null)
             'preferred_instance_types': preferredInstanceTypes,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOutpostsOutpostInstanceTypeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
