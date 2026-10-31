// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_healthcare_fhir_service`.
const Set<String> _azurermHealthcareFhirServiceSensitive = <String>{};

/// Healthcare Fhir Service enum for `kind`.
extension type const HealthcareFhirServiceKind._(TfArg<String> _)
    implements TfArg<String> {
  HealthcareFhirServiceKind.variable(String name)
    : this._(TfArg.variable(name));
  HealthcareFhirServiceKind.expression(String template)
    : this._(TfArg.expression(template));
  const HealthcareFhirServiceKind.arg(TfArg<String> arg) : this._(arg);

  static const fhirR4 = HealthcareFhirServiceKind._(TfArgLiteral('fhir-R4'));
  static const fhirStu3 = HealthcareFhirServiceKind._(
    TfArgLiteral('fhir-Stu3'),
  );

  static const List<HealthcareFhirServiceKind> values = [fhirR4, fhirStu3];
}

/// Typed helper for the `authentication` block of
/// `azurerm_healthcare_fhir_service` (derived from provider schema).
@immutable
final class HealthcareFhirServiceAuthentication {
  const HealthcareFhirServiceAuthentication({
    required this.audience,
    required this.authority,
    this.smartProxyEnabled,
  });

  final TfArg<String> audience;

  final TfArg<String> authority;

  final TfArg<bool>? smartProxyEnabled;

  @internal
  Map<String, Object?> encode() => {
    'audience': audience.toTfJson(),
    'authority': authority.toTfJson(),
    'smart_proxy_enabled': ?smartProxyEnabled?.toTfJson(),
  };
}

/// Typed helper for the `cors` block of
/// `azurerm_healthcare_fhir_service` (derived from provider schema).
@immutable
final class HealthcareFhirServiceCors {
  const HealthcareFhirServiceCors({
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    this.credentialsAllowed,
    this.maxAgeInSeconds,
  });

  final TfArg<List<String>> allowedHeaders;

  final EnumList<HealthcareFhirServiceAllowedMethods> allowedMethods;

  final TfArg<List<String>> allowedOrigins;

  final TfArg<bool>? credentialsAllowed;

  final TfArg<num>? maxAgeInSeconds;

  @internal
  Map<String, Object?> encode() => {
    'allowed_headers': allowedHeaders.toTfJson(),
    'allowed_methods': allowedMethods.toTfJson(),
    'allowed_origins': allowedOrigins.toTfJson(),
    'credentials_allowed': ?credentialsAllowed?.toTfJson(),
    'max_age_in_seconds': ?maxAgeInSeconds?.toTfJson(),
  };
}

/// `allowed_methods` — derived from the provider schema description.
extension type const HealthcareFhirServiceAllowedMethods._(TfArg<String> _)
    implements TfArg<String> {
  HealthcareFhirServiceAllowedMethods.variable(String name)
    : this._(TfArg.variable(name));
  HealthcareFhirServiceAllowedMethods.expression(String template)
    : this._(TfArg.expression(template));
  const HealthcareFhirServiceAllowedMethods.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = HealthcareFhirServiceAllowedMethods._(
    TfArgLiteral('DELETE'),
  );
  static const get = HealthcareFhirServiceAllowedMethods._(TfArgLiteral('GET'));
  static const head = HealthcareFhirServiceAllowedMethods._(
    TfArgLiteral('HEAD'),
  );
  static const merge = HealthcareFhirServiceAllowedMethods._(
    TfArgLiteral('MERGE'),
  );
  static const post = HealthcareFhirServiceAllowedMethods._(
    TfArgLiteral('POST'),
  );
  static const options = HealthcareFhirServiceAllowedMethods._(
    TfArgLiteral('OPTIONS'),
  );
  static const put = HealthcareFhirServiceAllowedMethods._(TfArgLiteral('PUT'));
  static const patch = HealthcareFhirServiceAllowedMethods._(
    TfArgLiteral('PATCH'),
  );

  static const List<HealthcareFhirServiceAllowedMethods> values = [
    delete,
    get,
    head,
    merge,
    post,
    options,
    put,
    patch,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_healthcare_fhir_service` (derived from provider schema).
@immutable
final class HealthcareFhirServiceIdentity {
  const HealthcareFhirServiceIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `oci_artifact` block of
/// `azurerm_healthcare_fhir_service` (derived from provider schema).
@immutable
final class HealthcareFhirServiceOciArtifact {
  const HealthcareFhirServiceOciArtifact({
    this.digest,
    this.imageName,
    required this.loginServer,
  });

  final TfArg<String>? digest;

  final TfArg<String>? imageName;

  final TfArg<String> loginServer;

  @internal
  Map<String, Object?> encode() => {
    'digest': ?digest?.toTfJson(),
    'image_name': ?imageName?.toTfJson(),
    'login_server': loginServer.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_healthcare_fhir_service`.
final class AzurermHealthcareFhirService extends Resource {
  static const String tfType = 'azurerm_healthcare_fhir_service';

  AzurermHealthcareFhirService(
    super.localName, {
    TfArg<List<String>>? accessPolicyObjectIds,
    TfArg<String>? configurationExportStorageAccountName,
    TfArg<List<String>>? containerRegistryLoginServerUrl,
    HealthcareFhirServiceKind? kind,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workspaceId,
    required HealthcareFhirServiceAuthentication authentication,
    HealthcareFhirServiceCors? cors,
    HealthcareFhirServiceIdentity? identity,
    List<HealthcareFhirServiceOciArtifact>? ociArtifact,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_policy_object_ids': ?accessPolicyObjectIds,
           'configuration_export_storage_account_name':
               ?configurationExportStorageAccountName,
           'container_registry_login_server_url':
               ?containerRegistryLoginServerUrl,
           'kind': ?kind,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'workspace_id': workspaceId,
           'authentication': TfArg.literal(authentication.encode()),
           if (cors != null) 'cors': TfArg.literal(cors.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (ociArtifact != null)
             'oci_artifact': TfArg.literal([
               for (final e in ociArtifact) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermHealthcareFhirServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermHealthcareFhirService>`.
  RefTo<AzurermHealthcareFhirService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `access_policy_object_ids` attribute.
  TfRef<List<String>> get accessPolicyObjectIds =>
      TfRef.attribute<List<String>>(this, 'access_policy_object_ids');

  /// Reference to `configuration_export_storage_account_name` attribute.
  TfRef<String> get configurationExportStorageAccountName =>
      TfRef.attribute<String>(
        this,
        'configuration_export_storage_account_name',
      );

  /// Reference to `container_registry_login_server_url` attribute.
  TfRef<List<String>> get containerRegistryLoginServerUrl =>
      TfRef.attribute<List<String>>(
        this,
        'container_registry_login_server_url',
      );

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
