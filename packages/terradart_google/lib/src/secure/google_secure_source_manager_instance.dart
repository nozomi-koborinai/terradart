// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secure_source_manager_instance`.
const Set<String> _googleSecureSourceManagerInstanceSensitive = <String>{};

/// Secure Source Manager Instance enum for `state`.
enum SecureSourceManagerInstanceState implements TerraformEnum {
  creating('CREATING'),
  active('ACTIVE'),
  deleting('DELETING'),
  paused('PAUSED'),
  unknown('UNKNOWN');

  const SecureSourceManagerInstanceState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Secure Source Manager Instance State enum for `state_note`.
enum SecureSourceManagerInstanceStateNote implements TerraformEnum {
  stateNoteUnspecified('STATE_NOTE_UNSPECIFIED'),
  pausedCmekUnavailable('PAUSED_CMEK_UNAVAILABLE'),
  instanceResuming('INSTANCE_RESUMING');

  const SecureSourceManagerInstanceStateNote(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<List<Object?>>? pscAllowedProjects;

  final SecureSourceManagerInstancePrivateConfigCustomHostConfig?
  customHostConfig;

  Map<String, Object?> encode() => {
    if (caPool != null) 'ca_pool': caPool!.toTfJson(),
    'is_private': isPrivate.toTfJson(),
    if (pscAllowedProjects != null)
      'psc_allowed_projects': pscAllowedProjects!.toTfJson(),
    if (customHostConfig != null)
      'custom_host_config': customHostConfig!.encode(),
  };
}

/// Typed helper for the `private_config.custom_host_config` block of
/// `google_secure_source_manager_instance` (derived from provider schema).
@immutable
final class SecureSourceManagerInstancePrivateConfigCustomHostConfig {
  const SecureSourceManagerInstancePrivateConfigCustomHostConfig({
    required this.api,
    required this.gitHttp,
    required this.gitSsh,
    required this.html,
  });

  final TfArg<String> api;

  final TfArg<String> gitHttp;

  final TfArg<String> gitSsh;

  final TfArg<String> html;

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
///   localName: 'git',
///   location: TfArg.literal('us-central1'),
///   instanceId: TfArg.literal('terradart-ssm'),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleSecureSourceManagerInstance extends Resource {
  static const String tfType = 'google_secure_source_manager_instance';

  GoogleSecureSourceManagerInstance({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> instanceId,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? kmsKey,
    SecureSourceManagerInstancePrivateConfig? privateConfig,
    SecureSourceManagerInstanceWorkforceIdentityFederationConfig?
    workforceIdentityFederationConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance_id': instanceId,
           if (labels != null) 'labels': labels,
           if (kmsKey != null) 'kms_key': kmsKey,
           if (privateConfig != null)
             'private_config': TfArg.literal(privateConfig.encode()),
           if (workforceIdentityFederationConfig != null)
             'workforce_identity_federation_config': TfArg.literal(
               workforceIdentityFederationConfig.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerInstanceSensitive;

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

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
