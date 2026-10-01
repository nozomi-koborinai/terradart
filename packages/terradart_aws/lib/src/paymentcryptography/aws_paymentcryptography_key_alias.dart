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
           'key_arn': ?keyArn,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPaymentcryptographyKeyAliasSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPaymentcryptographyKeyAlias>`.
  RefTo<AwsPaymentcryptographyKeyAlias> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alias_name` attribute.
  TfRef<String> get aliasName => TfRef.attribute<String>(this, 'alias_name');

  /// Reference to `key_arn` attribute.
  TfRef<String> get keyArn => TfRef.attribute<String>(this, 'key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
