// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_domain`.
const Set<String> _awsDatazoneDomainSensitive = <String>{};

/// Factory wrapper for `aws_datazone_domain`.
final class DataAwsDatazoneDomain extends Data {
  static const String tfType = 'aws_datazone_domain';

  DataAwsDatazoneDomain({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneDomainSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `domain_version` attribute.
  TfRef<String> get domainVersion =>
      TfRef.attribute<String>(this, 'domain_version');

  /// Reference to `last_updated_at` attribute.
  TfRef<String> get lastUpdatedAt =>
      TfRef.attribute<String>(this, 'last_updated_at');

  /// Reference to `managed_account_id` attribute.
  TfRef<String> get managedAccountId =>
      TfRef.attribute<String>(this, 'managed_account_id');

  /// Reference to `portal_url` attribute.
  TfRef<String> get portalUrl => TfRef.attribute<String>(this, 'portal_url');

  /// Reference to `root_domain_unit_id` attribute.
  TfRef<String> get rootDomainUnitId =>
      TfRef.attribute<String>(this, 'root_domain_unit_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
