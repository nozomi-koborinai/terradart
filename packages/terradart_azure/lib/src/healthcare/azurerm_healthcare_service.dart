// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_healthcare_service`.
const Set<String> _azurermHealthcareServiceSensitive = <String>{};

/// Healthcare Service enum for `kind`.
extension type const HealthcareServiceKind._(TfArg<String> _)
    implements TfArg<String> {
  HealthcareServiceKind.variable(String name) : this._(TfArg.variable(name));
  HealthcareServiceKind.expression(String template)
    : this._(TfArg.expression(template));
  const HealthcareServiceKind.arg(TfArg<String> arg) : this._(arg);

  static const fhir = HealthcareServiceKind._(TfArgLiteral('fhir'));
  static const fhirR4 = HealthcareServiceKind._(TfArgLiteral('fhir-R4'));
  static const fhirStu3 = HealthcareServiceKind._(TfArgLiteral('fhir-Stu3'));

  static const List<HealthcareServiceKind> values = [fhir, fhirR4, fhirStu3];
}

/// Typed helper for the `authentication_configuration` block of
/// `azurerm_healthcare_service` (derived from provider schema).
@immutable
final class HealthcareServiceAuthenticationConfiguration {
  const HealthcareServiceAuthenticationConfiguration({
    this.audience,
    this.authority,
    this.smartProxyEnabled,
  });

  final TfArg<String>? audience;

  final TfArg<String>? authority;

  final TfArg<bool>? smartProxyEnabled;

  @internal
  Map<String, Object?> encode() => {
    'audience': ?audience?.toTfJson(),
    'authority': ?authority?.toTfJson(),
    'smart_proxy_enabled': ?smartProxyEnabled?.toTfJson(),
  };
}

/// Typed helper for the `cors_configuration` block of
/// `azurerm_healthcare_service` (derived from provider schema).
@immutable
final class HealthcareServiceCorsConfiguration {
  const HealthcareServiceCorsConfiguration({
    this.allowCredentials,
    this.allowedHeaders,
    this.allowedMethods,
    this.allowedOrigins,
    this.maxAgeInSeconds,
  });

  final TfArg<bool>? allowCredentials;

  final TfArg<List<String>>? allowedHeaders;

  final EnumList<HealthcareServiceAllowedMethods>? allowedMethods;

  final TfArg<List<String>>? allowedOrigins;

  final TfArg<num>? maxAgeInSeconds;

  @internal
  Map<String, Object?> encode() => {
    'allow_credentials': ?allowCredentials?.toTfJson(),
    'allowed_headers': ?allowedHeaders?.toTfJson(),
    'allowed_methods': ?allowedMethods?.toTfJson(),
    'allowed_origins': ?allowedOrigins?.toTfJson(),
    'max_age_in_seconds': ?maxAgeInSeconds?.toTfJson(),
  };
}

/// `allowed_methods` — derived from the provider schema description.
extension type const HealthcareServiceAllowedMethods._(TfArg<String> _)
    implements TfArg<String> {
  HealthcareServiceAllowedMethods.variable(String name)
    : this._(TfArg.variable(name));
  HealthcareServiceAllowedMethods.expression(String template)
    : this._(TfArg.expression(template));
  const HealthcareServiceAllowedMethods.arg(TfArg<String> arg) : this._(arg);

  static const delete = HealthcareServiceAllowedMethods._(
    TfArgLiteral('DELETE'),
  );
  static const get = HealthcareServiceAllowedMethods._(TfArgLiteral('GET'));
  static const head = HealthcareServiceAllowedMethods._(TfArgLiteral('HEAD'));
  static const merge = HealthcareServiceAllowedMethods._(TfArgLiteral('MERGE'));
  static const post = HealthcareServiceAllowedMethods._(TfArgLiteral('POST'));
  static const options = HealthcareServiceAllowedMethods._(
    TfArgLiteral('OPTIONS'),
  );
  static const put = HealthcareServiceAllowedMethods._(TfArgLiteral('PUT'));
  static const patch = HealthcareServiceAllowedMethods._(TfArgLiteral('PATCH'));

  static const List<HealthcareServiceAllowedMethods> values = [
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
/// `azurerm_healthcare_service` (derived from provider schema).
@immutable
final class HealthcareServiceIdentity {
  const HealthcareServiceIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `azurerm_healthcare_service`.
final class AzurermHealthcareService extends Resource {
  static const String tfType = 'azurerm_healthcare_service';

  AzurermHealthcareService(
    super.localName, {
    TfArg<List<String>>? accessPolicyObjectIds,
    TfArg<String>? configurationExportStorageAccountName,
    TfArg<String>? cosmosdbKeyVaultKeyVersionlessId,
    TfArg<num>? cosmosdbThroughput,
    HealthcareServiceKind? kind,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    HealthcareServiceAuthenticationConfiguration? authenticationConfiguration,
    HealthcareServiceCorsConfiguration? corsConfiguration,
    HealthcareServiceIdentity? identity,
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
           'cosmosdb_key_vault_key_versionless_id':
               ?cosmosdbKeyVaultKeyVersionlessId,
           'cosmosdb_throughput': ?cosmosdbThroughput,
           'kind': ?kind,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (authenticationConfiguration != null)
             'authentication_configuration': TfArg.literal(
               authenticationConfiguration.encode(),
             ),
           if (corsConfiguration != null)
             'cors_configuration': TfArg.literal(corsConfiguration.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermHealthcareServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermHealthcareService>`.
  RefTo<AzurermHealthcareService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_object_ids` attribute.
  TfRef<List<String>> get accessPolicyObjectIds =>
      TfRef.attribute<List<String>>(this, 'access_policy_object_ids');

  /// Reference to `configuration_export_storage_account_name` attribute.
  TfRef<String> get configurationExportStorageAccountName =>
      TfRef.attribute<String>(
        this,
        'configuration_export_storage_account_name',
      );

  /// Reference to `cosmosdb_key_vault_key_versionless_id` attribute.
  TfRef<String> get cosmosdbKeyVaultKeyVersionlessId =>
      TfRef.attribute<String>(this, 'cosmosdb_key_vault_key_versionless_id');

  /// Reference to `cosmosdb_throughput` attribute.
  TfRef<num> get cosmosdbThroughput =>
      TfRef.attribute<num>(this, 'cosmosdb_throughput');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
