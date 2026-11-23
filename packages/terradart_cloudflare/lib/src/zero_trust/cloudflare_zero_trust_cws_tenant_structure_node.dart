// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_tenant_structure_node`.
const Set<String> _cloudflareZeroTrustCwsTenantStructureNodeSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_cws_tenant_structure_node`.
final class CloudflareZeroTrustCwsTenantStructureNode extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_cws_tenant_structure_node';

  CloudflareZeroTrustCwsTenantStructureNode(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? name,
    required TfArg<String> nativeId,
    required TfArg<String> nodeKind,
    TfArg<String>? parent,
    required TfArg<String> structureId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'name': ?name,
           'native_id': nativeId,
           'node_kind': nodeKind,
           'parent': ?parent,
           'structure_id': structureId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCwsTenantStructureNodeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCwsTenantStructureNode>`.
  RefTo<CloudflareZeroTrustCwsTenantStructureNode> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `native_id` attribute.
  TfRef<String> get nativeId => TfRef.attribute<String>(this, 'native_id');

  /// Reference to `node_kind` attribute.
  TfRef<String> get nodeKind => TfRef.attribute<String>(this, 'node_kind');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `structure_id` attribute.
  TfRef<String> get structureId =>
      TfRef.attribute<String>(this, 'structure_id');
}
