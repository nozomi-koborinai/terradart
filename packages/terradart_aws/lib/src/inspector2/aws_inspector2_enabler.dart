// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector2_enabler`.
const Set<String> _awsInspector2EnablerSensitive = <String>{};

/// Factory wrapper for `aws_inspector2_enabler`.
final class AwsInspector2Enabler extends Resource {
  static const String tfType = 'aws_inspector2_enabler';

  AwsInspector2Enabler({
    required super.localName,
    required TfArg<List<String>> accountIds,
    TfArg<String>? region,
    required TfArg<List<String>> resourceTypes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_ids': accountIds,
           if (region != null) 'region': region,
           'resource_types': resourceTypes,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInspector2EnablerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
