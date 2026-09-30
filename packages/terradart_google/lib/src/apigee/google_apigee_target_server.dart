// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_target_server`.
const Set<String> _googleApigeeTargetServerSensitive = <String>{};

/// Apigee Target Server enum for `protocol`.
enum ApigeeTargetServerProtocol implements TerraformEnum {
  http('HTTP'),
  http2('HTTP2'),
  grpcTarget('GRPC_TARGET'),
  grpc('GRPC'),
  externalCallout('EXTERNAL_CALLOUT');

  const ApigeeTargetServerProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `s_sl_info` block of
/// `google_apigee_target_server` (derived from provider schema).
@immutable
final class ApigeeTargetServerSSlInfo {
  const ApigeeTargetServerSSlInfo({
    this.ciphers,
    this.clientAuthEnabled,
    required this.enabled,
    this.enforce,
    this.ignoreValidationErrors,
    this.keyAlias,
    this.keyStore,
    this.protocols,
    this.trustStore,
    this.commonName,
  });

  final TfArg<List<String>>? ciphers;

  final TfArg<bool>? clientAuthEnabled;

  final TfArg<bool> enabled;

  final TfArg<bool>? enforce;

  final TfArg<bool>? ignoreValidationErrors;

  final TfArg<String>? keyAlias;

  final TfArg<String>? keyStore;

  final TfArg<List<String>>? protocols;

  final TfArg<String>? trustStore;

  final ApigeeTargetServerSSlInfoCommonName? commonName;

  Map<String, Object?> encode() => {
    'ciphers': ?ciphers?.toTfJson(),
    'client_auth_enabled': ?clientAuthEnabled?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'enforce': ?enforce?.toTfJson(),
    'ignore_validation_errors': ?ignoreValidationErrors?.toTfJson(),
    'key_alias': ?keyAlias?.toTfJson(),
    'key_store': ?keyStore?.toTfJson(),
    'protocols': ?protocols?.toTfJson(),
    'trust_store': ?trustStore?.toTfJson(),
    'common_name': ?commonName?.encode(),
  };
}

/// Typed helper for the `s_sl_info.common_name` block of
/// `google_apigee_target_server` (derived from provider schema).
@immutable
final class ApigeeTargetServerSSlInfoCommonName {
  const ApigeeTargetServerSSlInfoCommonName({this.value, this.wildcardMatch});

  final TfArg<String>? value;

  final TfArg<bool>? wildcardMatch;

  Map<String, Object?> encode() => {
    'value': ?value?.toTfJson(),
    'wildcard_match': ?wildcardMatch?.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_target_server`.
///
/// TargetServer configuration. TargetServers are used to decouple a proxy
/// TargetEndpoint HTTPTargetConnections from concrete URLs for backend
/// services.
///
/// Apigee **target server** — named backend host:port for an environment.
///
/// **Cost / apply:** gcp-cost: no Target/server SKU under Apigee
/// `1C2D-8C78-EC58` (list_skus keyword Target/server → 0).
/// billing-behavior: requires a never_apply [GoogleApigeeEnvironment]
/// (Active Base Environment Usage Hours `C112-9373-5FC4` **$0.50/h**+).
/// Debt-only on `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeTargetServer extends Resource {
  static const String tfType = 'google_apigee_target_server';

  GoogleApigeeTargetServer({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> envId,
    required TfArg<String> host,
    required TfArg<num> port,
    TfArg<String>? description,
    TfArg<bool>? isEnabled,
    TfArg<ApigeeTargetServerProtocol>? protocol,
    ApigeeTargetServerSSlInfo? sSlInfo,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'env_id': envId,
           'host': host,
           'port': port,
           'description': ?description,
           'is_enabled': ?isEnabled,
           'protocol': ?protocol,
           if (sSlInfo != null) 's_sl_info': TfArg.literal(sSlInfo.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeTargetServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeTargetServer>`.
  RefTo<GoogleApigeeTargetServer> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `env_id` attribute.
  TfRef<String> get envIdRef => TfRef.attribute<String>(this, 'env_id');

  /// Reference to `host` attribute.
  TfRef<String> get hostRef => TfRef.attribute<String>(this, 'host');

  /// Reference to `is_enabled` attribute.
  TfRef<bool> get isEnabledRef => TfRef.attribute<bool>(this, 'is_enabled');

  /// Reference to `port` attribute.
  TfRef<num> get portRef => TfRef.attribute<num>(this, 'port');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocolRef => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
