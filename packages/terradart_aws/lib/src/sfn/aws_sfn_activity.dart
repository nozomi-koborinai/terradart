// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sfn_activity`.
const Set<String> _awsSfnActivitySensitive = <String>{};

/// Typed helper for the `encryption_configuration` block of
/// `aws_sfn_activity` (derived from provider schema).
@immutable
final class SfnActivityEncryptionConfiguration {
  const SfnActivityEncryptionConfiguration({
    this.kmsDataKeyReusePeriodSeconds,
    this.kmsKeyId,
    this.type,
  });

  final TfArg<num>? kmsDataKeyReusePeriodSeconds;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final SfnActivityType? type;

  Map<String, Object?> encode() => {
    'kms_data_key_reuse_period_seconds': ?kmsDataKeyReusePeriodSeconds
        ?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const SfnActivityType._(TfArg<String> _)
    implements TfArg<String> {
  SfnActivityType.variable(String name) : this._(TfArg.variable(name));
  SfnActivityType.expression(String template)
    : this._(TfArg.expression(template));
  const SfnActivityType.arg(TfArg<String> arg) : this._(arg);

  static const awsOwnedKey = SfnActivityType._(TfArgLiteral('AWS_OWNED_KEY'));
  static const customerManagedKmsKey = SfnActivityType._(
    TfArgLiteral('CUSTOMER_MANAGED_KMS_KEY'),
  );

  static const List<SfnActivityType> values = [
    awsOwnedKey,
    customerManagedKmsKey,
  ];
}

/// Factory wrapper for `aws_sfn_activity`.
final class AwsSfnActivity extends Resource {
  static const String tfType = 'aws_sfn_activity';

  AwsSfnActivity(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    SfnActivityEncryptionConfiguration? encryptionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSfnActivitySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSfnActivity>`.
  RefTo<AwsSfnActivity> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
