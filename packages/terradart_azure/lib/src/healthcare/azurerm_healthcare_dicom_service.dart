// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_healthcare_dicom_service`.
const Set<String> _azurermHealthcareDicomServiceSensitive = <String>{};

/// Typed helper for the `cors` block of
/// `azurerm_healthcare_dicom_service` (derived from provider schema).
@immutable
final class HealthcareDicomServiceCors {
  const HealthcareDicomServiceCors({
    this.allowCredentials,
    this.allowedHeaders,
    this.allowedMethods,
    this.allowedOrigins,
    this.maxAgeInSeconds,
  });

  final TfArg<bool>? allowCredentials;

  final TfArg<List<String>>? allowedHeaders;

  final TfArg<List<String>>? allowedMethods;

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

/// Typed helper for the `identity` block of
/// `azurerm_healthcare_dicom_service` (derived from provider schema).
@immutable
final class HealthcareDicomServiceIdentity {
  const HealthcareDicomServiceIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `storage` block of
/// `azurerm_healthcare_dicom_service` (derived from provider schema).
@immutable
final class HealthcareDicomServiceStorage {
  const HealthcareDicomServiceStorage({
    required this.fileSystemName,
    required this.storageAccountId,
  });

  final TfArg<String> fileSystemName;

  final TfArg<String> storageAccountId;

  @internal
  Map<String, Object?> encode() => {
    'file_system_name': fileSystemName.toTfJson(),
    'storage_account_id': storageAccountId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_healthcare_dicom_service`.
final class AzurermHealthcareDicomService extends Resource {
  static const String tfType = 'azurerm_healthcare_dicom_service';

  AzurermHealthcareDicomService(
    super.localName, {
    TfArg<bool>? dataPartitionsEnabled,
    TfArg<String>? encryptionKeyUrl,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workspaceId,
    HealthcareDicomServiceCors? cors,
    HealthcareDicomServiceIdentity? identity,
    HealthcareDicomServiceStorage? storage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_partitions_enabled': ?dataPartitionsEnabled,
           'encryption_key_url': ?encryptionKeyUrl,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'tags': ?tags,
           'workspace_id': workspaceId,
           if (cors != null) 'cors': TfArg.literal(cors.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (storage != null) 'storage': TfArg.literal(storage.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermHealthcareDicomServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermHealthcareDicomService>`.
  RefTo<AzurermHealthcareDicomService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication` attribute.
  TfRef<List<Map<String, Object?>>> get authentication =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'authentication');

  /// Reference to `private_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get privateEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'private_endpoint');

  /// Reference to `service_url` attribute.
  TfRef<String> get serviceUrl => TfRef.attribute<String>(this, 'service_url');

  /// Reference to `data_partitions_enabled` attribute.
  TfRef<bool> get dataPartitionsEnabled =>
      TfRef.attribute<bool>(this, 'data_partitions_enabled');

  /// Reference to `encryption_key_url` attribute.
  TfRef<String> get encryptionKeyUrl =>
      TfRef.attribute<String>(this, 'encryption_key_url');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
