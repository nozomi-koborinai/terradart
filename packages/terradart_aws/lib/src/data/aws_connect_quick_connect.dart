// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_quick_connect`.
const Set<String> _awsConnectQuickConnectSensitive = <String>{};

/// Factory wrapper for `aws_connect_quick_connect`.
final class DataAwsConnectQuickConnect extends Data {
  static const String tfType = 'aws_connect_quick_connect';

  DataAwsConnectQuickConnect({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? name,
    TfArg<String>? quickConnectId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           if (name != null) 'name': name,
           if (quickConnectId != null) 'quick_connect_id': quickConnectId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectQuickConnectSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `quick_connect_config` attribute.
  TfRef<List<Map<String, Object?>>> get quickConnectConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'quick_connect_config');
}
