// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_environment`.
const Set<String> _googleApigeeEnvironmentSensitive = <String>{};

/// Apigee Environment Api Proxy enum for `api_proxy_type`.
enum ApigeeEnvironmentApiProxyType implements TerraformEnum {
  apiProxyTypeUnspecified('API_PROXY_TYPE_UNSPECIFIED'),
  programmable('PROGRAMMABLE'),
  configurable('CONFIGURABLE');

  const ApigeeEnvironmentApiProxyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Apigee Environment Deployment enum for `deployment_type`.
enum ApigeeEnvironmentDeploymentType implements TerraformEnum {
  deploymentTypeUnspecified('DEPLOYMENT_TYPE_UNSPECIFIED'),
  proxy('PROXY'),
  archive('ARCHIVE');

  const ApigeeEnvironmentDeploymentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Apigee Environment enum for `type`.
enum ApigeeEnvironmentType implements TerraformEnum {
  environmentTypeUnspecified('ENVIRONMENT_TYPE_UNSPECIFIED'),
  base('BASE'),
  intermediate('INTERMEDIATE'),
  comprehensive('COMPREHENSIVE');

  const ApigeeEnvironmentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `client_ip_resolution_config` block of
/// `google_apigee_environment` (derived from provider schema).
@immutable
final class ApigeeEnvironmentClientIpResolutionConfig {
  const ApigeeEnvironmentClientIpResolutionConfig({this.headerIndexAlgorithm});

  final ApigeeEnvironmentHeaderIndexAlgorithm? headerIndexAlgorithm;

  Map<String, Object?> encode() => {
    'header_index_algorithm': ?headerIndexAlgorithm?.encode(),
  };
}

/// Typed helper for the `client_ip_resolution_config.header_index_algorithm` block of
/// `google_apigee_environment` (derived from provider schema).
@immutable
final class ApigeeEnvironmentHeaderIndexAlgorithm {
  const ApigeeEnvironmentHeaderIndexAlgorithm({
    required this.ipHeaderIndex,
    required this.ipHeaderName,
  });

  final TfArg<num> ipHeaderIndex;

  final TfArg<String> ipHeaderName;

  Map<String, Object?> encode() => {
    'ip_header_index': ipHeaderIndex.toTfJson(),
    'ip_header_name': ipHeaderName.toTfJson(),
  };
}

/// Typed helper for the `node_config` block of
/// `google_apigee_environment` (derived from provider schema).
@immutable
final class ApigeeEnvironmentNodeConfig {
  const ApigeeEnvironmentNodeConfig({this.maxNodeCount, this.minNodeCount});

  final TfArg<String>? maxNodeCount;

  final TfArg<String>? minNodeCount;

  Map<String, Object?> encode() => {
    'max_node_count': ?maxNodeCount?.toTfJson(),
    'min_node_count': ?minNodeCount?.toTfJson(),
  };
}

/// Typed helper for the `properties` block of
/// `google_apigee_environment` (derived from provider schema).
@immutable
final class ApigeeEnvironmentProperties {
  const ApigeeEnvironmentProperties({this.property});

  final List<ApigeeEnvironmentProperty>? property;

  Map<String, Object?> encode() => {
    if (property != null) 'property': [for (final e in property!) e.encode()],
  };
}

/// Typed helper for the `properties.property` block of
/// `google_apigee_environment` (derived from provider schema).
@immutable
final class ApigeeEnvironmentProperty {
  const ApigeeEnvironmentProperty({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_environment`.
///
/// An `Environment` in Apigee.
///
/// Apigee **environment** — logical API runtime environment in an org.
///
/// **Cost / apply:** Apigee `1C2D-8C78-EC58` Active Base Environment Usage
/// Hours SKU `C112-9373-5FC4` **$0.50/h**, Intermediate `421B-D6C0-52A2`
/// **$2/h**, Comprehensive `01C8-CFFA-106E` **$4.70/h** (plus Gateway Node
/// Hours `0136-18C1-DD41` **$1.025/h` on the parent instance). Requires a
/// never_apply [GoogleApigeeOrganization]. Debt-only on `terradart-validate`.
/// **Never** wire into apply-smoke.
final class GoogleApigeeEnvironment extends Resource {
  static const String tfType = 'google_apigee_environment';

  GoogleApigeeEnvironment(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> orgId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? forwardProxyUri,
    ApigeeEnvironmentNodeConfig? nodeConfig,
    ApigeeEnvironmentProperties? properties,
    ApigeeEnvironmentClientIpResolutionConfig? clientIpResolutionConfig,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'org_id': orgId,
           'display_name': ?displayName,
           'description': ?description,
           'forward_proxy_uri': ?forwardProxyUri,
           if (nodeConfig != null)
             'node_config': TfArg.literal(nodeConfig.encode()),
           if (properties != null)
             'properties': TfArg.literal(properties.encode()),
           if (clientIpResolutionConfig != null)
             'client_ip_resolution_config': TfArg.literal(
               clientIpResolutionConfig.encode(),
             ),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvironmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeEnvironment>`.
  RefTo<GoogleApigeeEnvironment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_proxy_type` attribute.
  TfRef<String> get apiProxyType =>
      TfRef.attribute<String>(this, 'api_proxy_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deployment_type` attribute.
  TfRef<String> get deploymentType =>
      TfRef.attribute<String>(this, 'deployment_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `forward_proxy_uri` attribute.
  TfRef<String> get forwardProxyUri =>
      TfRef.attribute<String>(this, 'forward_proxy_uri');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
