// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_secure_source_manager_instance`.
const Set<String> _googleSecureSourceManagerInstanceSensitive = <String>{};

/// Secure Source Manager Instance enum for `state`.
extension type const SecureSourceManagerInstanceState._(TfArg<String> _)
    implements TfArg<String> {
  SecureSourceManagerInstanceState.variable(String name)
    : this._(TfArg.variable(name));
  SecureSourceManagerInstanceState.expression(String template)
    : this._(TfArg.expression(template));
  const SecureSourceManagerInstanceState.arg(TfArg<String> arg) : this._(arg);

  static const creating = SecureSourceManagerInstanceState._(
    TfArgLiteral('CREATING'),
  );
  static const active = SecureSourceManagerInstanceState._(
    TfArgLiteral('ACTIVE'),
  );
  static const deleting = SecureSourceManagerInstanceState._(
    TfArgLiteral('DELETING'),
  );
  static const paused = SecureSourceManagerInstanceState._(
    TfArgLiteral('PAUSED'),
  );
  static const unknown = SecureSourceManagerInstanceState._(
    TfArgLiteral('UNKNOWN'),
  );

  static const List<SecureSourceManagerInstanceState> values = [
    creating,
    active,
    deleting,
    paused,
    unknown,
  ];
}

/// Secure Source Manager Instance State enum for `state_note`.
extension type const SecureSourceManagerInstanceStateNote._(TfArg<String> _)
    implements TfArg<String> {
  SecureSourceManagerInstanceStateNote.variable(String name)
    : this._(TfArg.variable(name));
  SecureSourceManagerInstanceStateNote.expression(String template)
    : this._(TfArg.expression(template));
  const SecureSourceManagerInstanceStateNote.arg(TfArg<String> arg)
    : this._(arg);

  static const stateNoteUnspecified = SecureSourceManagerInstanceStateNote._(
    TfArgLiteral('STATE_NOTE_UNSPECIFIED'),
  );
  static const pausedCmekUnavailable = SecureSourceManagerInstanceStateNote._(
    TfArgLiteral('PAUSED_CMEK_UNAVAILABLE'),
  );
  static const instanceResuming = SecureSourceManagerInstanceStateNote._(
    TfArgLiteral('INSTANCE_RESUMING'),
  );

  static const List<SecureSourceManagerInstanceStateNote> values = [
    stateNoteUnspecified,
    pausedCmekUnavailable,
    instanceResuming,
  ];
}

/// Typed helper for the `private_config` block of
/// `google_secure_source_manager_instance` (derived from provider schema).
@immutable
final class SecureSourceManagerInstancePrivateConfig {
  const SecureSourceManagerInstancePrivateConfig({
    this.caPool,
    required this.isPrivate,
    this.pscAllowedProjects,
    this.customHostConfig,
  });

  final TfArg<String>? caPool;

  final TfArg<bool> isPrivate;

  final TfArg<List<String>>? pscAllowedProjects;

  final SecureSourceManagerInstanceCustomHostConfig? customHostConfig;

  @internal
  Map<String, Object?> encode() => {
    'ca_pool': ?caPool?.toTfJson(),
    'is_private': isPrivate.toTfJson(),
    'psc_allowed_projects': ?pscAllowedProjects?.toTfJson(),
    'custom_host_config': ?customHostConfig?.encode(),
  };
}

/// Typed helper for the `private_config.custom_host_config` block of
/// `google_secure_source_manager_instance` (derived from provider schema).
@immutable
final class SecureSourceManagerInstanceCustomHostConfig {
  const SecureSourceManagerInstanceCustomHostConfig({
    required this.api,
    required this.gitHttp,
    required this.gitSsh,
    required this.html,
  });

  final TfArg<String> api;

  final TfArg<String> gitHttp;

  final TfArg<String> gitSsh;

  final TfArg<String> html;

  @internal
  Map<String, Object?> encode() => {
    'api': api.toTfJson(),
    'git_http': gitHttp.toTfJson(),
    'git_ssh': gitSsh.toTfJson(),
    'html': html.toTfJson(),
  };
}

/// Typed helper for the `workforce_identity_federation_config` block of
/// `google_secure_source_manager_instance` (derived from provider schema).
@immutable
final class SecureSourceManagerInstanceWorkforceIdentityFederationConfig {
  const SecureSourceManagerInstanceWorkforceIdentityFederationConfig({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Factory wrapper for `google_secure_source_manager_instance`.
///
/// Instances are deployed to an available Google Cloud region and are
/// accessible via their web interface.
///
/// Secure Source Manager **instance** — a regional Git hosting deployment
/// with a web UI.
///
/// **Cost:** Cloud Billing Catalog lists fixed-instance SKUs (e.g. us-central1
/// `9B40-B4AA-D8EE` at **$1000/month**). An instance bills while it exists;
/// destroy stops the charge. Do not leave one running in apply-smoke.
///
/// Enable `securesourcemanager.googleapis.com` via [GoogleProjectService]
/// before apply. Prefer [deletionPolicy] `DELETE` when the instance is
/// disposable.
///
/// Example:
/// ```dart
/// GoogleSecureSourceManagerInstance(
///   'git',
///   location: TfArg.literal('us-central1'),
///   instanceId: TfArg.literal('terradart-ssm'),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleSecureSourceManagerInstance extends Resource {
  static const String tfType = 'google_secure_source_manager_instance';

  GoogleSecureSourceManagerInstance(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> instanceId,
    TfArg<Map<String, String>>? labels,
    RefTo<GoogleKmsCryptoKey>? kmsKey,
    SecureSourceManagerInstancePrivateConfig? privateConfig,
    SecureSourceManagerInstanceWorkforceIdentityFederationConfig?
    workforceIdentityFederationConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance_id': instanceId,
           'labels': ?labels,
           'kms_key': ?kmsKey?.encodeAs('id'),
           if (privateConfig != null)
             'private_config': TfArg.literal(privateConfig.encode()),
           if (workforceIdentityFederationConfig != null)
             'workforce_identity_federation_config': TfArg.literal(
               workforceIdentityFederationConfig.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecureSourceManagerInstance>`.
  RefTo<GoogleSecureSourceManagerInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `host_config` attribute.
  TfRef<List<Map<String, Object?>>> get hostConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'host_config');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_note` attribute.
  TfRef<String> get stateNote => TfRef.attribute<String>(this, 'state_note');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
