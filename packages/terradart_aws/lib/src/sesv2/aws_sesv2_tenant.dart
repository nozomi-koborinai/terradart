// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_tenant`.
const Set<String> _awsSesv2TenantSensitive = <String>{};

/// Factory wrapper for `aws_sesv2_tenant`.
final class AwsSesv2Tenant extends Resource {
  static const String tfType = 'aws_sesv2_tenant';

  AwsSesv2Tenant({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> tenantName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'tags': ?tags, 'tenant_name': tenantName},
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2TenantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2Tenant>`.
  RefTo<AwsSesv2Tenant> get ref => RefTo.of(this);

  /// Reference to `sending_status` attribute.
  TfRef<String> get sendingStatus =>
      TfRef.attribute<String>(this, 'sending_status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `tenant_arn` attribute.
  TfRef<String> get tenantArn => TfRef.attribute<String>(this, 'tenant_arn');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_name` attribute.
  TfRef<String> get tenantNameRef =>
      TfRef.attribute<String>(this, 'tenant_name');
}
