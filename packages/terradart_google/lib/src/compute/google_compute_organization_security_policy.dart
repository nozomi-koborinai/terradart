// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_organization_security_policy`.
const Set<String> _googleComputeOrganizationSecurityPolicySensitive =
    <String>{};

/// Typed helper for the `advanced_options_config` block of
/// `google_compute_organization_security_policy` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyAdvancedOptionsConfig {
  const ComputeOrganizationSecurityPolicyAdvancedOptionsConfig({
    this.jsonParsing,
    this.logLevel,
    this.requestBodyInspectionSize,
    this.userIpRequestHeaders,
    this.jsonCustomConfig,
  });

  final TfArg<
    ComputeOrganizationSecurityPolicyAdvancedOptionsConfigJsonParsing
  >?
  jsonParsing;

  final TfArg<ComputeOrganizationSecurityPolicyAdvancedOptionsConfigLogLevel>?
  logLevel;

  final TfArg<
    ComputeOrganizationSecurityPolicyAdvancedOptionsConfigRequestBodyInspectionSize
  >?
  requestBodyInspectionSize;

  final TfArg<List<String>>? userIpRequestHeaders;

  final ComputeOrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfig?
  jsonCustomConfig;

  Map<String, Object?> encode() => {
    'json_parsing': ?jsonParsing?.toTfJson(),
    'log_level': ?logLevel?.toTfJson(),
    'request_body_inspection_size': ?requestBodyInspectionSize?.toTfJson(),
    'user_ip_request_headers': ?userIpRequestHeaders?.toTfJson(),
    'json_custom_config': ?jsonCustomConfig?.encode(),
  };
}

/// `json_parsing` — derived from the provider schema description.
enum ComputeOrganizationSecurityPolicyAdvancedOptionsConfigJsonParsing
    implements TerraformEnum {
  disabled('DISABLED'),
  standard('STANDARD'),
  standardWithGraphql('STANDARD_WITH_GRAPHQL');

  const ComputeOrganizationSecurityPolicyAdvancedOptionsConfigJsonParsing(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `log_level` — derived from the provider schema description.
enum ComputeOrganizationSecurityPolicyAdvancedOptionsConfigLogLevel
    implements TerraformEnum {
  normal('NORMAL'),
  verbose('VERBOSE');

  const ComputeOrganizationSecurityPolicyAdvancedOptionsConfigLogLevel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `request_body_inspection_size` — derived from the provider schema description.
enum ComputeOrganizationSecurityPolicyAdvancedOptionsConfigRequestBodyInspectionSize
    implements TerraformEnum {
  v8kb('8KB'),
  v16kb('16KB'),
  v32kb('32KB'),
  v48kb('48KB'),
  v64kb('64KB');

  const ComputeOrganizationSecurityPolicyAdvancedOptionsConfigRequestBodyInspectionSize(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `advanced_options_config.json_custom_config` block of
/// `google_compute_organization_security_policy` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfig {
  const ComputeOrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfig({
    required this.contentTypes,
  });

  final TfArg<List<String>> contentTypes;

  Map<String, Object?> encode() => {'content_types': contentTypes.toTfJson()};
}

/// Factory wrapper for `google_compute_organization_security_policy`.
///
/// Organization security policies are used to control incoming/outgoing
/// traffic.
///
/// Organization Cloud Armor security policy — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleComputeOrganizationSecurityPolicy extends Resource {
  static const String tfType = 'google_compute_organization_security_policy';

  GoogleComputeOrganizationSecurityPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> parent,
    TfArg<String>? shortName,
    TfArg<String>? type,
    ComputeOrganizationSecurityPolicyAdvancedOptionsConfig?
    advancedOptionsConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'parent': parent,
           'short_name': ?shortName,
           'type': ?type,
           if (advancedOptionsConfig != null)
             'advanced_options_config': TfArg.literal(
               advancedOptionsConfig.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeOrganizationSecurityPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeOrganizationSecurityPolicy>`.
  RefTo<GoogleComputeOrganizationSecurityPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');

  /// Reference to `short_name` attribute.
  TfRef<String> get shortNameRef => TfRef.attribute<String>(this, 'short_name');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
