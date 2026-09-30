// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workmail_domain`.
const Set<String> _awsWorkmailDomainSensitive = <String>{};

/// Factory wrapper for `aws_workmail_domain`.
final class AwsWorkmailDomain extends Resource {
  static const String tfType = 'aws_workmail_domain';

  AwsWorkmailDomain({
    required super.localName,
    required TfArg<String> domainName,
    required TfArg<String> organizationId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'organization_id': organizationId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkmailDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWorkmailDomain>`.
  RefTo<AwsWorkmailDomain> get ref => RefTo.of(this);

  /// Reference to `dkim_verification_status` attribute.
  TfRef<String> get dkimVerificationStatus =>
      TfRef.attribute<String>(this, 'dkim_verification_status');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `is_test_domain` attribute.
  TfRef<bool> get isTestDomain => TfRef.attribute<bool>(this, 'is_test_domain');

  /// Reference to `ownership_verification_status` attribute.
  TfRef<String> get ownershipVerificationStatus =>
      TfRef.attribute<String>(this, 'ownership_verification_status');

  /// Reference to `records` attribute.
  TfRef<List<Map<String, Object?>>> get records =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'records');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainNameRef =>
      TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationIdRef =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
