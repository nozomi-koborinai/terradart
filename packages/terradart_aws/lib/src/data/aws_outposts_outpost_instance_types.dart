// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_outposts_outpost_instance_types`.
const Set<String> _awsOutpostsOutpostInstanceTypesSensitive = <String>{};

/// Factory wrapper for `aws_outposts_outpost_instance_types`.
final class DataAwsOutpostsOutpostInstanceTypes extends Data {
  static const String tfType = 'aws_outposts_outpost_instance_types';

  DataAwsOutpostsOutpostInstanceTypes({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': arn, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsOutpostsOutpostInstanceTypesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_types` attribute.
  TfRef<List<String>> get instanceTypes =>
      TfRef.attribute<List<String>>(this, 'instance_types');
}
