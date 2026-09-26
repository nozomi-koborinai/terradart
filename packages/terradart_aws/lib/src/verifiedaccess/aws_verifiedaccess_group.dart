// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_verifiedaccess_group`.
const Set<String> _awsVerifiedaccessGroupSensitive = <String>{};

/// Typed helper for the `sse_configuration` block of
/// `aws_verifiedaccess_group` (derived from provider schema).
@immutable
final class VerifiedaccessGroupSseConfiguration {
  const VerifiedaccessGroupSseConfiguration({
    this.customerManagedKeyEnabled,
    this.kmsKeyArn,
  });

  final TfArg<bool>? customerManagedKeyEnabled;

  final TfArg<String>? kmsKeyArn;

  Map<String, Object?> encode() => {
    if (customerManagedKeyEnabled != null)
      'customer_managed_key_enabled': customerManagedKeyEnabled!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_verifiedaccess_group`.
final class AwsVerifiedaccessGroup extends Resource {
  static const String tfType = 'aws_verifiedaccess_group';

  AwsVerifiedaccessGroup({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? policyDocument,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> verifiedaccessInstanceId,
    VerifiedaccessGroupSseConfiguration? sseConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (policyDocument != null) 'policy_document': policyDocument,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'verifiedaccess_instance_id': verifiedaccessInstanceId,
           if (sseConfiguration != null)
             'sse_configuration': TfArg.literal(sseConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVerifiedaccessGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `deletion_time` attribute.
  TfRef<String> get deletionTime =>
      TfRef.attribute<String>(this, 'deletion_time');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `verifiedaccess_group_arn` attribute.
  TfRef<String> get verifiedaccessGroupArn =>
      TfRef.attribute<String>(this, 'verifiedaccess_group_arn');

  /// Reference to `verifiedaccess_group_id` attribute.
  TfRef<String> get verifiedaccessGroupId =>
      TfRef.attribute<String>(this, 'verifiedaccess_group_id');
}
