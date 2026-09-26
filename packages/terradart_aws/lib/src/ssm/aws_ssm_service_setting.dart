// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_service_setting`.
const Set<String> _awsSsmServiceSettingSensitive = <String>{};

/// Factory wrapper for `aws_ssm_service_setting`.
final class AwsSsmServiceSetting extends Resource {
  static const String tfType = 'aws_ssm_service_setting';

  AwsSsmServiceSetting({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> settingId,
    required TfArg<String> settingValue,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'setting_id': settingId,
           'setting_value': settingValue,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmServiceSettingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
