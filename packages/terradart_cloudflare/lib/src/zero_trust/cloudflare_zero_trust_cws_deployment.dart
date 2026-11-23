// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_cws_deployment`.
const Set<String> _cloudflareZeroTrustCwsDeploymentSensitive = <String>{};

/// Zero Trust Cws Deployment Default enum for `default_mode`.
extension type const ZeroTrustCwsDeploymentDefaultMode._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustCwsDeploymentDefaultMode.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustCwsDeploymentDefaultMode.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustCwsDeploymentDefaultMode.arg(TfArg<String> arg) : this._(arg);

  static const allow = ZeroTrustCwsDeploymentDefaultMode._(
    TfArgLiteral('ALLOW'),
  );
  static const block = ZeroTrustCwsDeploymentDefaultMode._(
    TfArgLiteral('BLOCK'),
  );

  static const List<ZeroTrustCwsDeploymentDefaultMode> values = [allow, block];
}

/// Zero Trust Cws Deployment On Error enum for `on_error_action`.
extension type const ZeroTrustCwsDeploymentOnErrorAction._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustCwsDeploymentOnErrorAction.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustCwsDeploymentOnErrorAction.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustCwsDeploymentOnErrorAction.arg(TfArg<String> arg)
    : this._(arg);

  static const block = ZeroTrustCwsDeploymentOnErrorAction._(
    TfArgLiteral('BLOCK'),
  );
  static const skip = ZeroTrustCwsDeploymentOnErrorAction._(
    TfArgLiteral('SKIP'),
  );

  static const List<ZeroTrustCwsDeploymentOnErrorAction> values = [block, skip];
}

/// Factory wrapper for `cloudflare_zero_trust_cws_deployment`.
final class CloudflareZeroTrustCwsDeployment extends Resource {
  static const String tfType = 'cloudflare_zero_trust_cws_deployment';

  CloudflareZeroTrustCwsDeployment(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<List<String>> basicAuthCredentialIds,
    required ZeroTrustCwsDeploymentDefaultMode defaultMode,
    TfArg<String>? description,
    TfArg<String>? domainAclId,
    required TfArg<String> name,
    ZeroTrustCwsDeploymentOnErrorAction? onErrorAction,
    required TfArg<List<String>> policySetIds,
    TfArg<bool>? regoRaiseError,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'basic_auth_credential_ids': basicAuthCredentialIds,
           'default_mode': defaultMode,
           'description': ?description,
           'domain_acl_id': ?domainAclId,
           'name': name,
           'on_error_action': ?onErrorAction,
           'policy_set_ids': policySetIds,
           'rego_raise_error': ?regoRaiseError,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustCwsDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCwsDeployment>`.
  RefTo<CloudflareZeroTrustCwsDeployment> get ref => RefTo.of(this);

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

  /// Reference to `basic_auth_credential_ids` attribute.
  TfRef<List<String>> get basicAuthCredentialIds =>
      TfRef.attribute<List<String>>(this, 'basic_auth_credential_ids');

  /// Reference to `default_mode` attribute.
  TfRef<String> get defaultMode =>
      TfRef.attribute<String>(this, 'default_mode');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `domain_acl_id` attribute.
  TfRef<String> get domainAclId =>
      TfRef.attribute<String>(this, 'domain_acl_id');

  /// Reference to `on_error_action` attribute.
  TfRef<String> get onErrorAction =>
      TfRef.attribute<String>(this, 'on_error_action');

  /// Reference to `policy_set_ids` attribute.
  TfRef<List<String>> get policySetIds =>
      TfRef.attribute<List<String>>(this, 'policy_set_ids');

  /// Reference to `rego_raise_error` attribute.
  TfRef<bool> get regoRaiseError =>
      TfRef.attribute<bool>(this, 'rego_raise_error');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
