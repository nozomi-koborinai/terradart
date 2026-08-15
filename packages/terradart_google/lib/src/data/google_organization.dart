// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_organization`.
const Set<String> _googleOrganizationSensitive = <String>{};

/// Factory wrapper for `google_organization`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOrganization extends Data {
  static const String tfType = 'google_organization';

  DataGoogleOrganization({
    required super.localName,
    TfArg<String>? domain,
    TfArg<String>? organization,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (domain != null) 'domain': domain,
           if (organization != null) 'organization': organization,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrganizationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `directory_customer_id` attribute.
  TfRef<String> get directoryCustomerId =>
      TfRef.attribute<String>(this, 'directory_customer_id');

  /// Reference to `lifecycle_state` attribute.
  TfRef<String> get lifecycleState =>
      TfRef.attribute<String>(this, 'lifecycle_state');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');
}
