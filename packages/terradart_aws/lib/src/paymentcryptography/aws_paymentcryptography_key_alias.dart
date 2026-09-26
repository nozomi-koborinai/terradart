// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_paymentcryptography_key_alias`.
const Set<String> _awsPaymentcryptographyKeyAliasSensitive = <String>{};

/// Factory wrapper for `aws_paymentcryptography_key_alias`.
final class AwsPaymentcryptographyKeyAlias extends Resource {
  static const String tfType = 'aws_paymentcryptography_key_alias';

  AwsPaymentcryptographyKeyAlias({
    required super.localName,
    required TfArg<String> aliasName,
    TfArg<String>? keyArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alias_name': aliasName,
           if (keyArn != null) 'key_arn': keyArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPaymentcryptographyKeyAliasSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
