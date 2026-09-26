// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_phone_number`.
const Set<String> _awsConnectPhoneNumberSensitive = <String>{};

/// Factory wrapper for `aws_connect_phone_number`.
final class AwsConnectPhoneNumber extends Resource {
  static const String tfType = 'aws_connect_phone_number';

  AwsConnectPhoneNumber({
    required super.localName,
    required TfArg<String> countryCode,
    TfArg<String>? description,
    TfArg<String>? prefix,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> targetArn,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'country_code': countryCode,
           if (description != null) 'description': description,
           if (prefix != null) 'prefix': prefix,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'target_arn': targetArn,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectPhoneNumberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `phone_number` attribute.
  TfRef<String> get phoneNumber =>
      TfRef.attribute<String>(this, 'phone_number');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');
}
