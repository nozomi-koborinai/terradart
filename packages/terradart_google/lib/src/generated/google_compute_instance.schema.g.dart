// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_compute_instance.schema.dart';

// **************************************************************************
// SchemaGenerator
// **************************************************************************

base class AdvancedMachineFeatures {
  /// Creates a [AdvancedMachineFeatures] from a JSON map.
  factory AdvancedMachineFeatures.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AdvancedMachineFeatures._(this._json);

  AdvancedMachineFeatures({
    bool? enableNestedVirtualization,
    bool? enableUefiNetworking,
    String? performanceMonitoringUnit,
    num? threadsPerCore,
    String? turboMode,
    num? visibleCoreCount,
  }) {
    _json = {
      'enable_nested_virtualization': ?enableNestedVirtualization,
      'enable_uefi_networking': ?enableUefiNetworking,
      'performance_monitoring_unit': ?performanceMonitoringUnit,
      'threads_per_core': ?threadsPerCore,
      'turbo_mode': ?turboMode,
      'visible_core_count': ?visibleCoreCount,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AdvancedMachineFeatures].
  static const SchemanticType<AdvancedMachineFeatures> $schema =
      _AdvancedMachineFeaturesTypeFactory();

  bool? get enableNestedVirtualization {
    return _json['enable_nested_virtualization'] as bool?;
  }

  set enableNestedVirtualization(bool? value) {
    if (value == null) {
      _json.remove('enable_nested_virtualization');
    } else {
      _json['enable_nested_virtualization'] = value;
    }
  }

  bool? get enableUefiNetworking {
    return _json['enable_uefi_networking'] as bool?;
  }

  set enableUefiNetworking(bool? value) {
    if (value == null) {
      _json.remove('enable_uefi_networking');
    } else {
      _json['enable_uefi_networking'] = value;
    }
  }

  String? get performanceMonitoringUnit {
    return _json['performance_monitoring_unit'] as String?;
  }

  set performanceMonitoringUnit(String? value) {
    if (value == null) {
      _json.remove('performance_monitoring_unit');
    } else {
      _json['performance_monitoring_unit'] = value;
    }
  }

  num? get threadsPerCore {
    return _json['threads_per_core'] as num?;
  }

  set threadsPerCore(num? value) {
    if (value == null) {
      _json.remove('threads_per_core');
    } else {
      _json['threads_per_core'] = value;
    }
  }

  String? get turboMode {
    return _json['turbo_mode'] as String?;
  }

  set turboMode(String? value) {
    if (value == null) {
      _json.remove('turbo_mode');
    } else {
      _json['turbo_mode'] = value;
    }
  }

  num? get visibleCoreCount {
    return _json['visible_core_count'] as num?;
  }

  set visibleCoreCount(num? value) {
    if (value == null) {
      _json.remove('visible_core_count');
    } else {
      _json['visible_core_count'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AdvancedMachineFeatures] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AdvancedMachineFeaturesTypeFactory
    extends SchemanticType<AdvancedMachineFeatures> {
  const _AdvancedMachineFeaturesTypeFactory();

  @override
  AdvancedMachineFeatures parse(Object? json) {
    return AdvancedMachineFeatures._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AdvancedMachineFeatures',
    definition: $Schema
        .object(
          properties: {
            'enable_nested_virtualization': $Schema.boolean(
              description: 'Whether to enable nested virtualization or not.',
            ),
            'enable_uefi_networking': $Schema.boolean(
              description:
                  'Whether to enable UEFI networking for the instance.',
            ),
            'performance_monitoring_unit': $Schema.string(
              description:
                  'The PMU is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are "STANDARD", "ENHANCED", and "ARCHITECTURAL".',
            ),
            'threads_per_core': $Schema.number(
              description:
                  'The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.',
            ),
            'turbo_mode': $Schema.string(
              description:
                  'Turbo frequency mode to use for the instance. Currently supported modes is "ALL_CORE_MAX".',
            ),
            'visible_core_count': $Schema.number(
              description:
                  'The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width.',
            ),
          },
          description:
              'Controls for advanced machine-related behavior features.',
        )
        .value,
    dependencies: [],
  );
}

base class AttachedDisk {
  /// Creates a [AttachedDisk] from a JSON map.
  factory AttachedDisk.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AttachedDisk._(this._json);

  AttachedDisk({
    String? deviceName,
    String? diskEncryptionKeyRaw,
    String? diskEncryptionKeyRsa,
    String? diskEncryptionServiceAccount,
    bool? forceAttach,
    String? kmsKeySelfLink,
    String? mode,
    required String source,
  }) {
    _json = {
      'device_name': ?deviceName,
      'disk_encryption_key_raw': ?diskEncryptionKeyRaw,
      'disk_encryption_key_rsa': ?diskEncryptionKeyRsa,
      'disk_encryption_service_account': ?diskEncryptionServiceAccount,
      'force_attach': ?forceAttach,
      'kms_key_self_link': ?kmsKeySelfLink,
      'mode': ?mode,
      'source': source,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AttachedDisk].
  static const SchemanticType<AttachedDisk> $schema =
      _AttachedDiskTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get deviceName {
    return _json['device_name'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set deviceName(String? value) {
    if (value == null) {
      _json.remove('device_name');
    } else {
      _json['device_name'] = value;
    }
  }

  String? get diskEncryptionKeyRaw {
    return _json['disk_encryption_key_raw'] as String?;
  }

  set diskEncryptionKeyRaw(String? value) {
    if (value == null) {
      _json.remove('disk_encryption_key_raw');
    } else {
      _json['disk_encryption_key_raw'] = value;
    }
  }

  String? get diskEncryptionKeyRsa {
    return _json['disk_encryption_key_rsa'] as String?;
  }

  set diskEncryptionKeyRsa(String? value) {
    if (value == null) {
      _json.remove('disk_encryption_key_rsa');
    } else {
      _json['disk_encryption_key_rsa'] = value;
    }
  }

  String? get diskEncryptionServiceAccount {
    return _json['disk_encryption_service_account'] as String?;
  }

  set diskEncryptionServiceAccount(String? value) {
    if (value == null) {
      _json.remove('disk_encryption_service_account');
    } else {
      _json['disk_encryption_service_account'] = value;
    }
  }

  bool? get forceAttach {
    return _json['force_attach'] as bool?;
  }

  set forceAttach(bool? value) {
    if (value == null) {
      _json.remove('force_attach');
    } else {
      _json['force_attach'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get kmsKeySelfLink {
    return _json['kms_key_self_link'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set kmsKeySelfLink(String? value) {
    if (value == null) {
      _json.remove('kms_key_self_link');
    } else {
      _json['kms_key_self_link'] = value;
    }
  }

  String? get mode {
    return _json['mode'] as String?;
  }

  set mode(String? value) {
    if (value == null) {
      _json.remove('mode');
    } else {
      _json['mode'] = value;
    }
  }

  String get source {
    return _json['source'] as String;
  }

  set source(String value) {
    _json['source'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AttachedDisk] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AttachedDiskTypeFactory extends SchemanticType<AttachedDisk> {
  const _AttachedDiskTypeFactory();

  @override
  AttachedDisk parse(Object? json) {
    return AttachedDisk._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AttachedDisk',
    definition: $Schema
        .object(
          properties: {
            'device_name': $Schema.string(
              description:
                  'Name with which the attached disk is accessible under /dev/disk/by-id/',
            ),
            'disk_encryption_key_raw': $Schema.string(
              description:
                  'A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.',
            ),
            'disk_encryption_key_rsa': $Schema.string(
              description:
                  'Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.',
            ),
            'disk_encryption_service_account': $Schema.string(
              description:
                  'The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used',
            ),
            'force_attach': $Schema.boolean(
              description:
                  'Whether to force attach the regional disk even if it\'s currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.',
            ),
            'kms_key_self_link': $Schema.string(
              description:
                  'The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.',
            ),
            'mode': $Schema.string(
              description:
                  'Read/write mode for the disk. One of "READ_ONLY" or "READ_WRITE".',
            ),
            'source': $Schema.string(
              description:
                  'The name or self_link of the disk attached to this instance.',
            ),
          },
          required: ['source'],
          description: 'List of disks attached to the instance',
        )
        .value,
    dependencies: [],
  );
}

base class SourceImageEncryptionKey {
  /// Creates a [SourceImageEncryptionKey] from a JSON map.
  factory SourceImageEncryptionKey.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  SourceImageEncryptionKey._(this._json);

  SourceImageEncryptionKey({
    String? kmsKeySelfLink,
    String? kmsKeyServiceAccount,
    String? rawKey,
    String? rsaEncryptedKey,
  }) {
    _json = {
      'kms_key_self_link': ?kmsKeySelfLink,
      'kms_key_service_account': ?kmsKeyServiceAccount,
      'raw_key': ?rawKey,
      'rsa_encrypted_key': ?rsaEncryptedKey,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SourceImageEncryptionKey].
  static const SchemanticType<SourceImageEncryptionKey> $schema =
      _SourceImageEncryptionKeyTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get kmsKeySelfLink {
    return _json['kms_key_self_link'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set kmsKeySelfLink(String? value) {
    if (value == null) {
      _json.remove('kms_key_self_link');
    } else {
      _json['kms_key_self_link'] = value;
    }
  }

  String? get kmsKeyServiceAccount {
    return _json['kms_key_service_account'] as String?;
  }

  set kmsKeyServiceAccount(String? value) {
    if (value == null) {
      _json.remove('kms_key_service_account');
    } else {
      _json['kms_key_service_account'] = value;
    }
  }

  String? get rawKey {
    return _json['raw_key'] as String?;
  }

  set rawKey(String? value) {
    if (value == null) {
      _json.remove('raw_key');
    } else {
      _json['raw_key'] = value;
    }
  }

  String? get rsaEncryptedKey {
    return _json['rsa_encrypted_key'] as String?;
  }

  set rsaEncryptedKey(String? value) {
    if (value == null) {
      _json.remove('rsa_encrypted_key');
    } else {
      _json['rsa_encrypted_key'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SourceImageEncryptionKey] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SourceImageEncryptionKeyTypeFactory
    extends SchemanticType<SourceImageEncryptionKey> {
  const _SourceImageEncryptionKeyTypeFactory();

  @override
  SourceImageEncryptionKey parse(Object? json) {
    return SourceImageEncryptionKey._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SourceImageEncryptionKey',
    definition: $Schema
        .object(
          properties: {
            'kms_key_self_link': $Schema.string(
              description:
                  'The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.',
            ),
            'kms_key_service_account': $Schema.string(
              description:
                  'The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.',
            ),
            'raw_key': $Schema.string(
              description:
                  'Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.',
            ),
            'rsa_encrypted_key': $Schema.string(
              description:
                  'Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.',
            ),
          },
          description: 'The encryption key used to decrypt the source image.',
        )
        .value,
    dependencies: [],
  );
}

base class SourceSnapshotEncryptionKey {
  /// Creates a [SourceSnapshotEncryptionKey] from a JSON map.
  factory SourceSnapshotEncryptionKey.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  SourceSnapshotEncryptionKey._(this._json);

  SourceSnapshotEncryptionKey({
    String? kmsKeySelfLink,
    String? kmsKeyServiceAccount,
    String? rawKey,
    String? rsaEncryptedKey,
  }) {
    _json = {
      'kms_key_self_link': ?kmsKeySelfLink,
      'kms_key_service_account': ?kmsKeyServiceAccount,
      'raw_key': ?rawKey,
      'rsa_encrypted_key': ?rsaEncryptedKey,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SourceSnapshotEncryptionKey].
  static const SchemanticType<SourceSnapshotEncryptionKey> $schema =
      _SourceSnapshotEncryptionKeyTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get kmsKeySelfLink {
    return _json['kms_key_self_link'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set kmsKeySelfLink(String? value) {
    if (value == null) {
      _json.remove('kms_key_self_link');
    } else {
      _json['kms_key_self_link'] = value;
    }
  }

  String? get kmsKeyServiceAccount {
    return _json['kms_key_service_account'] as String?;
  }

  set kmsKeyServiceAccount(String? value) {
    if (value == null) {
      _json.remove('kms_key_service_account');
    } else {
      _json['kms_key_service_account'] = value;
    }
  }

  String? get rawKey {
    return _json['raw_key'] as String?;
  }

  set rawKey(String? value) {
    if (value == null) {
      _json.remove('raw_key');
    } else {
      _json['raw_key'] = value;
    }
  }

  String? get rsaEncryptedKey {
    return _json['rsa_encrypted_key'] as String?;
  }

  set rsaEncryptedKey(String? value) {
    if (value == null) {
      _json.remove('rsa_encrypted_key');
    } else {
      _json['rsa_encrypted_key'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SourceSnapshotEncryptionKey] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SourceSnapshotEncryptionKeyTypeFactory
    extends SchemanticType<SourceSnapshotEncryptionKey> {
  const _SourceSnapshotEncryptionKeyTypeFactory();

  @override
  SourceSnapshotEncryptionKey parse(Object? json) {
    return SourceSnapshotEncryptionKey._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SourceSnapshotEncryptionKey',
    definition: $Schema
        .object(
          properties: {
            'kms_key_self_link': $Schema.string(
              description:
                  'The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.',
            ),
            'kms_key_service_account': $Schema.string(
              description:
                  'The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.',
            ),
            'raw_key': $Schema.string(
              description:
                  'Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.',
            ),
            'rsa_encrypted_key': $Schema.string(
              description:
                  'Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.',
            ),
          },
          description:
              'The encryption key used to decrypt the source snapshot.',
        )
        .value,
    dependencies: [],
  );
}

base class InitializeParams {
  /// Creates a [InitializeParams] from a JSON map.
  factory InitializeParams.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  InitializeParams._(this._json);

  InitializeParams({
    String? architecture,
    bool? enableConfidentialCompute,
    String? image,
    Map<String, String>? labels,
    num? provisionedIops,
    num? provisionedThroughput,
    Map<String, String>? resourceManagerTags,
    List<String>? resourcePolicies,
    num? size,
    String? snapshot,
    String? storagePool,
    String? type,
    SourceImageEncryptionKey? sourceImageEncryptionKey,
    SourceSnapshotEncryptionKey? sourceSnapshotEncryptionKey,
  }) {
    _json = {
      'architecture': ?architecture,
      'enable_confidential_compute': ?enableConfidentialCompute,
      'image': ?image,
      'labels': ?labels,
      'provisioned_iops': ?provisionedIops,
      'provisioned_throughput': ?provisionedThroughput,
      'resource_manager_tags': ?resourceManagerTags,
      'resource_policies': ?resourcePolicies,
      'size': ?size,
      'snapshot': ?snapshot,
      'storage_pool': ?storagePool,
      'type': ?type,
      'source_image_encryption_key': ?sourceImageEncryptionKey?.toJson(),
      'source_snapshot_encryption_key': ?sourceSnapshotEncryptionKey?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [InitializeParams].
  static const SchemanticType<InitializeParams> $schema =
      _InitializeParamsTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get architecture {
    return _json['architecture'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set architecture(String? value) {
    if (value == null) {
      _json.remove('architecture');
    } else {
      _json['architecture'] = value;
    }
  }

  bool? get enableConfidentialCompute {
    return _json['enable_confidential_compute'] as bool?;
  }

  set enableConfidentialCompute(bool? value) {
    if (value == null) {
      _json.remove('enable_confidential_compute');
    } else {
      _json['enable_confidential_compute'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get image {
    return _json['image'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set image(String? value) {
    if (value == null) {
      _json.remove('image');
    } else {
      _json['image'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  Map<String, String>? get labels {
    return (_json['labels'] as Map?)?.cast<String, String>();
  }

  /// Optional + Computed. Inferred from provider when null.
  set labels(Map<String, String>? value) {
    if (value == null) {
      _json.remove('labels');
    } else {
      _json['labels'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get provisionedIops {
    return _json['provisioned_iops'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set provisionedIops(num? value) {
    if (value == null) {
      _json.remove('provisioned_iops');
    } else {
      _json['provisioned_iops'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get provisionedThroughput {
    return _json['provisioned_throughput'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set provisionedThroughput(num? value) {
    if (value == null) {
      _json.remove('provisioned_throughput');
    } else {
      _json['provisioned_throughput'] = value;
    }
  }

  Map<String, String>? get resourceManagerTags {
    return (_json['resource_manager_tags'] as Map?)?.cast<String, String>();
  }

  set resourceManagerTags(Map<String, String>? value) {
    if (value == null) {
      _json.remove('resource_manager_tags');
    } else {
      _json['resource_manager_tags'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  List<String>? get resourcePolicies {
    return (_json['resource_policies'] as List?)?.cast<String>();
  }

  /// Optional + Computed. Inferred from provider when null.
  set resourcePolicies(List<String>? value) {
    if (value == null) {
      _json.remove('resource_policies');
    } else {
      _json['resource_policies'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get size {
    return _json['size'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set size(num? value) {
    if (value == null) {
      _json.remove('size');
    } else {
      _json['size'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get snapshot {
    return _json['snapshot'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set snapshot(String? value) {
    if (value == null) {
      _json.remove('snapshot');
    } else {
      _json['snapshot'] = value;
    }
  }

  String? get storagePool {
    return _json['storage_pool'] as String?;
  }

  set storagePool(String? value) {
    if (value == null) {
      _json.remove('storage_pool');
    } else {
      _json['storage_pool'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get type {
    return _json['type'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set type(String? value) {
    if (value == null) {
      _json.remove('type');
    } else {
      _json['type'] = value;
    }
  }

  SourceImageEncryptionKey? get sourceImageEncryptionKey {
    return _json['source_image_encryption_key'] == null
        ? null
        : SourceImageEncryptionKey.fromJson(
            _json['source_image_encryption_key'] as Map<String, dynamic>,
          );
  }

  set sourceImageEncryptionKey(SourceImageEncryptionKey? value) {
    if (value == null) {
      _json.remove('source_image_encryption_key');
    } else {
      _json['source_image_encryption_key'] = value;
    }
  }

  SourceSnapshotEncryptionKey? get sourceSnapshotEncryptionKey {
    return _json['source_snapshot_encryption_key'] == null
        ? null
        : SourceSnapshotEncryptionKey.fromJson(
            _json['source_snapshot_encryption_key'] as Map<String, dynamic>,
          );
  }

  set sourceSnapshotEncryptionKey(SourceSnapshotEncryptionKey? value) {
    if (value == null) {
      _json.remove('source_snapshot_encryption_key');
    } else {
      _json['source_snapshot_encryption_key'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [InitializeParams] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _InitializeParamsTypeFactory
    extends SchemanticType<InitializeParams> {
  const _InitializeParamsTypeFactory();

  @override
  InitializeParams parse(Object? json) {
    return InitializeParams._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'InitializeParams',
    definition: $Schema
        .object(
          properties: {
            'architecture': $Schema.string(
              description:
                  'The architecture of the disk. One of "X86_64" or "ARM64".',
            ),
            'enable_confidential_compute': $Schema.boolean(
              description:
                  'A flag to enable confidential compute mode on boot disk',
            ),
            'image': $Schema.string(
              description: 'The image from which this disk was initialised.',
            ),
            'labels': $Schema.object(
              description:
                  'A set of key/value label pairs assigned to the disk.',
              additionalProperties: $Schema.string(),
            ),
            'provisioned_iops': $Schema.number(
              description:
                  'Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.',
            ),
            'provisioned_throughput': $Schema.number(
              description:
                  'Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.',
            ),
            'resource_manager_tags': $Schema.object(
              description:
                  'A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.',
              additionalProperties: $Schema.string(),
            ),
            'resource_policies': $Schema.list(
              description:
                  'A list of self_links of resource policies to attach to the instance\'s boot disk. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.',
              items: $Schema.string(),
            ),
            'size': $Schema.number(
              description: 'The size of the image in gigabytes.',
            ),
            'snapshot': $Schema.string(
              description: 'The snapshot from which this disk was initialised.',
            ),
            'storage_pool': $Schema.string(
              description:
                  'The URL of the storage pool in which the new disk is created',
            ),
            'type': $Schema.string(
              description:
                  'The Google Compute Engine disk type. Such as pd-standard, pd-ssd or pd-balanced.',
            ),
            'source_image_encryption_key': $Schema.fromMap({
              '\$ref': r'#/$defs/SourceImageEncryptionKey',
            }),
            'source_snapshot_encryption_key': $Schema.fromMap({
              '\$ref': r'#/$defs/SourceSnapshotEncryptionKey',
            }),
          },
          description:
              'Parameters with which a disk was created alongside the instance.',
        )
        .value,
    dependencies: [
      SourceImageEncryptionKey.$schema,
      SourceSnapshotEncryptionKey.$schema,
    ],
  );
}

base class BootDisk {
  /// Creates a [BootDisk] from a JSON map.
  factory BootDisk.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  BootDisk._(this._json);

  BootDisk({
    bool? autoDelete,
    String? deviceName,
    String? diskEncryptionKeyRaw,
    String? diskEncryptionKeyRsa,
    String? diskEncryptionServiceAccount,
    bool? forceAttach,
    List<String>? guestOsFeatures,
    String? interface,
    String? kmsKeySelfLink,
    String? mode,
    String? source,
    InitializeParams? initializeParams,
  }) {
    _json = {
      'auto_delete': ?autoDelete,
      'device_name': ?deviceName,
      'disk_encryption_key_raw': ?diskEncryptionKeyRaw,
      'disk_encryption_key_rsa': ?diskEncryptionKeyRsa,
      'disk_encryption_service_account': ?diskEncryptionServiceAccount,
      'force_attach': ?forceAttach,
      'guest_os_features': ?guestOsFeatures,
      'interface': ?interface,
      'kms_key_self_link': ?kmsKeySelfLink,
      'mode': ?mode,
      'source': ?source,
      'initialize_params': ?initializeParams?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [BootDisk].
  static const SchemanticType<BootDisk> $schema = _BootDiskTypeFactory();

  bool? get autoDelete {
    return _json['auto_delete'] as bool?;
  }

  set autoDelete(bool? value) {
    if (value == null) {
      _json.remove('auto_delete');
    } else {
      _json['auto_delete'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get deviceName {
    return _json['device_name'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set deviceName(String? value) {
    if (value == null) {
      _json.remove('device_name');
    } else {
      _json['device_name'] = value;
    }
  }

  String? get diskEncryptionKeyRaw {
    return _json['disk_encryption_key_raw'] as String?;
  }

  set diskEncryptionKeyRaw(String? value) {
    if (value == null) {
      _json.remove('disk_encryption_key_raw');
    } else {
      _json['disk_encryption_key_raw'] = value;
    }
  }

  String? get diskEncryptionKeyRsa {
    return _json['disk_encryption_key_rsa'] as String?;
  }

  set diskEncryptionKeyRsa(String? value) {
    if (value == null) {
      _json.remove('disk_encryption_key_rsa');
    } else {
      _json['disk_encryption_key_rsa'] = value;
    }
  }

  String? get diskEncryptionServiceAccount {
    return _json['disk_encryption_service_account'] as String?;
  }

  set diskEncryptionServiceAccount(String? value) {
    if (value == null) {
      _json.remove('disk_encryption_service_account');
    } else {
      _json['disk_encryption_service_account'] = value;
    }
  }

  bool? get forceAttach {
    return _json['force_attach'] as bool?;
  }

  set forceAttach(bool? value) {
    if (value == null) {
      _json.remove('force_attach');
    } else {
      _json['force_attach'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  List<String>? get guestOsFeatures {
    return (_json['guest_os_features'] as List?)?.cast<String>();
  }

  /// Optional + Computed. Inferred from provider when null.
  set guestOsFeatures(List<String>? value) {
    if (value == null) {
      _json.remove('guest_os_features');
    } else {
      _json['guest_os_features'] = value;
    }
  }

  String? get interface {
    return _json['interface'] as String?;
  }

  set interface(String? value) {
    if (value == null) {
      _json.remove('interface');
    } else {
      _json['interface'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get kmsKeySelfLink {
    return _json['kms_key_self_link'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set kmsKeySelfLink(String? value) {
    if (value == null) {
      _json.remove('kms_key_self_link');
    } else {
      _json['kms_key_self_link'] = value;
    }
  }

  String? get mode {
    return _json['mode'] as String?;
  }

  set mode(String? value) {
    if (value == null) {
      _json.remove('mode');
    } else {
      _json['mode'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get source {
    return _json['source'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set source(String? value) {
    if (value == null) {
      _json.remove('source');
    } else {
      _json['source'] = value;
    }
  }

  InitializeParams? get initializeParams {
    return _json['initialize_params'] == null
        ? null
        : InitializeParams.fromJson(
            _json['initialize_params'] as Map<String, dynamic>,
          );
  }

  set initializeParams(InitializeParams? value) {
    if (value == null) {
      _json.remove('initialize_params');
    } else {
      _json['initialize_params'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [BootDisk] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _BootDiskTypeFactory extends SchemanticType<BootDisk> {
  const _BootDiskTypeFactory();

  @override
  BootDisk parse(Object? json) {
    return BootDisk._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'BootDisk',
    definition: $Schema
        .object(
          properties: {
            'auto_delete': $Schema.boolean(
              description:
                  'Whether the disk will be auto-deleted when the instance is deleted.',
            ),
            'device_name': $Schema.string(
              description:
                  'Name with which attached disk will be accessible under /dev/disk/by-id/',
            ),
            'disk_encryption_key_raw': $Schema.string(
              description:
                  'A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.',
            ),
            'disk_encryption_key_rsa': $Schema.string(
              description:
                  'Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.',
            ),
            'disk_encryption_service_account': $Schema.string(
              description:
                  'The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used',
            ),
            'force_attach': $Schema.boolean(
              description:
                  'Whether to force attach the regional disk even if it\'s currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.',
            ),
            'guest_os_features': $Schema.list(
              description:
                  'A list of features to enable on the guest operating system. Applicable only for bootable images.',
              items: $Schema.string(),
            ),
            'interface': $Schema.string(
              description:
                  'The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with attached_disk and only used for specific cases, please don\'t specify this field without advice from Google.)',
            ),
            'kms_key_self_link': $Schema.string(
              description:
                  'The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.',
            ),
            'mode': $Schema.string(
              description:
                  'Read/write mode for the disk. One of "READ_ONLY" or "READ_WRITE".',
            ),
            'source': $Schema.string(
              description:
                  'The name or self_link of the disk attached to this instance.',
            ),
            'initialize_params': $Schema.fromMap({
              '\$ref': r'#/$defs/InitializeParams',
            }),
          },
          description: 'The boot disk for the instance.',
        )
        .value,
    dependencies: [InitializeParams.$schema],
  );
}

base class ConfidentialInstanceConfig {
  /// Creates a [ConfidentialInstanceConfig] from a JSON map.
  factory ConfidentialInstanceConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ConfidentialInstanceConfig._(this._json);

  ConfidentialInstanceConfig({
    String? confidentialInstanceType,
    bool? enableConfidentialCompute,
  }) {
    _json = {
      'confidential_instance_type': ?confidentialInstanceType,
      'enable_confidential_compute': ?enableConfidentialCompute,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ConfidentialInstanceConfig].
  static const SchemanticType<ConfidentialInstanceConfig> $schema =
      _ConfidentialInstanceConfigTypeFactory();

  String? get confidentialInstanceType {
    return _json['confidential_instance_type'] as String?;
  }

  set confidentialInstanceType(String? value) {
    if (value == null) {
      _json.remove('confidential_instance_type');
    } else {
      _json['confidential_instance_type'] = value;
    }
  }

  bool? get enableConfidentialCompute {
    return _json['enable_confidential_compute'] as bool?;
  }

  set enableConfidentialCompute(bool? value) {
    if (value == null) {
      _json.remove('enable_confidential_compute');
    } else {
      _json['enable_confidential_compute'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ConfidentialInstanceConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ConfidentialInstanceConfigTypeFactory
    extends SchemanticType<ConfidentialInstanceConfig> {
  const _ConfidentialInstanceConfigTypeFactory();

  @override
  ConfidentialInstanceConfig parse(Object? json) {
    return ConfidentialInstanceConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ConfidentialInstanceConfig',
    definition: $Schema
        .object(
          properties: {
            'confidential_instance_type': $Schema.string(
              description:
                  '\n								The confidential computing technology the instance uses.\n								SEV is an AMD feature. TDX is an Intel feature. One of the following\n								values is required: SEV, SEV_SNP, TDX. If SEV_SNP, min_cpu_platform =\n								"AMD Milan" is currently required.',
            ),
            'enable_confidential_compute': $Schema.boolean(
              description:
                  'Defines whether the instance should have confidential compute enabled. Field will be deprecated in a future release',
            ),
          },
          description:
              'The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create.',
        )
        .value,
    dependencies: [],
  );
}

base class GuestAccelerator {
  /// Creates a [GuestAccelerator] from a JSON map.
  factory GuestAccelerator.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GuestAccelerator._(this._json);

  GuestAccelerator({required num count, required String type}) {
    _json = {'count': count, 'type': type};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GuestAccelerator].
  static const SchemanticType<GuestAccelerator> $schema =
      _GuestAcceleratorTypeFactory();

  num get count {
    return _json['count'] as num;
  }

  set count(num value) {
    _json['count'] = value;
  }

  String get type {
    return _json['type'] as String;
  }

  set type(String value) {
    _json['type'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GuestAccelerator] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GuestAcceleratorTypeFactory
    extends SchemanticType<GuestAccelerator> {
  const _GuestAcceleratorTypeFactory();

  @override
  GuestAccelerator parse(Object? json) {
    return GuestAccelerator._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GuestAccelerator',
    definition: $Schema
        .object(
          properties: {
            'count': $Schema.number(
              description:
                  'The number of the guest accelerator cards exposed to this instance.',
            ),
            'type': $Schema.string(
              description:
                  'The accelerator type resource exposed to this instance. E.g. nvidia-tesla-k80.',
            ),
          },
          required: ['count', 'type'],
          description:
              'List of the type and count of accelerator cards attached to the instance.',
        )
        .value,
    dependencies: [],
  );
}

base class InstanceEncryptionKey {
  /// Creates a [InstanceEncryptionKey] from a JSON map.
  factory InstanceEncryptionKey.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  InstanceEncryptionKey._(this._json);

  InstanceEncryptionKey({
    String? kmsKeySelfLink,
    String? kmsKeyServiceAccount,
  }) {
    _json = {
      'kms_key_self_link': ?kmsKeySelfLink,
      'kms_key_service_account': ?kmsKeyServiceAccount,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [InstanceEncryptionKey].
  static const SchemanticType<InstanceEncryptionKey> $schema =
      _InstanceEncryptionKeyTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get kmsKeySelfLink {
    return _json['kms_key_self_link'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set kmsKeySelfLink(String? value) {
    if (value == null) {
      _json.remove('kms_key_self_link');
    } else {
      _json['kms_key_self_link'] = value;
    }
  }

  String? get kmsKeyServiceAccount {
    return _json['kms_key_service_account'] as String?;
  }

  set kmsKeyServiceAccount(String? value) {
    if (value == null) {
      _json.remove('kms_key_service_account');
    } else {
      _json['kms_key_service_account'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [InstanceEncryptionKey] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _InstanceEncryptionKeyTypeFactory
    extends SchemanticType<InstanceEncryptionKey> {
  const _InstanceEncryptionKeyTypeFactory();

  @override
  InstanceEncryptionKey parse(Object? json) {
    return InstanceEncryptionKey._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'InstanceEncryptionKey',
    definition: $Schema
        .object(
          properties: {
            'kms_key_self_link': $Schema.string(
              description:
                  'The self link of the encryption key that is stored in Google Cloud KMS.',
            ),
            'kms_key_service_account': $Schema.string(
              description:
                  'The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.',
            ),
          },
          description:
              'Encryption key used to provide data encryption on the given instance.',
        )
        .value,
    dependencies: [],
  );
}

base class AccessConfig {
  /// Creates a [AccessConfig] from a JSON map.
  factory AccessConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AccessConfig._(this._json);

  AccessConfig({
    String? natIp,
    String? networkTier,
    String? publicPtrDomainName,
  }) {
    _json = {
      'nat_ip': ?natIp,
      'network_tier': ?networkTier,
      'public_ptr_domain_name': ?publicPtrDomainName,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AccessConfig].
  static const SchemanticType<AccessConfig> $schema =
      _AccessConfigTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get natIp {
    return _json['nat_ip'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set natIp(String? value) {
    if (value == null) {
      _json.remove('nat_ip');
    } else {
      _json['nat_ip'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get networkTier {
    return _json['network_tier'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set networkTier(String? value) {
    if (value == null) {
      _json.remove('network_tier');
    } else {
      _json['network_tier'] = value;
    }
  }

  String? get publicPtrDomainName {
    return _json['public_ptr_domain_name'] as String?;
  }

  set publicPtrDomainName(String? value) {
    if (value == null) {
      _json.remove('public_ptr_domain_name');
    } else {
      _json['public_ptr_domain_name'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AccessConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AccessConfigTypeFactory extends SchemanticType<AccessConfig> {
  const _AccessConfigTypeFactory();

  @override
  AccessConfig parse(Object? json) {
    return AccessConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AccessConfig',
    definition: $Schema
        .object(
          properties: {
            'nat_ip': $Schema.string(
              description:
                  'The IP address that is be 1:1 mapped to the instance\'s network ip.',
            ),
            'network_tier': $Schema.string(
              description:
                  'The networking tier used for configuring this instance. One of PREMIUM or STANDARD.',
            ),
            'public_ptr_domain_name': $Schema.string(
              description: 'The DNS domain name for the public PTR record.',
            ),
          },
          description:
              'Access configurations, i.e. IPs via which this instance can be accessed via the Internet.',
        )
        .value,
    dependencies: [],
  );
}

base class AliasIpRange {
  /// Creates a [AliasIpRange] from a JSON map.
  factory AliasIpRange.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  AliasIpRange._(this._json);

  AliasIpRange({required String ipCidrRange, String? subnetworkRangeName}) {
    _json = {
      'ip_cidr_range': ipCidrRange,
      'subnetwork_range_name': ?subnetworkRangeName,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [AliasIpRange].
  static const SchemanticType<AliasIpRange> $schema =
      _AliasIpRangeTypeFactory();

  String get ipCidrRange {
    return _json['ip_cidr_range'] as String;
  }

  set ipCidrRange(String value) {
    _json['ip_cidr_range'] = value;
  }

  String? get subnetworkRangeName {
    return _json['subnetwork_range_name'] as String?;
  }

  set subnetworkRangeName(String? value) {
    if (value == null) {
      _json.remove('subnetwork_range_name');
    } else {
      _json['subnetwork_range_name'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [AliasIpRange] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _AliasIpRangeTypeFactory extends SchemanticType<AliasIpRange> {
  const _AliasIpRangeTypeFactory();

  @override
  AliasIpRange parse(Object? json) {
    return AliasIpRange._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'AliasIpRange',
    definition: $Schema
        .object(
          properties: {
            'ip_cidr_range': $Schema.string(
              description:
                  'The IP CIDR range represented by this alias IP range.',
            ),
            'subnetwork_range_name': $Schema.string(
              description:
                  'The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range.',
            ),
          },
          required: ['ip_cidr_range'],
          description:
              'An array of alias IP ranges for this network interface.',
        )
        .value,
    dependencies: [],
  );
}

base class Ipv6AccessConfig {
  /// Creates a [Ipv6AccessConfig] from a JSON map.
  factory Ipv6AccessConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  Ipv6AccessConfig._(this._json);

  Ipv6AccessConfig({
    String? externalIpv6,
    String? externalIpv6PrefixLength,
    String? name,
    required String networkTier,
    String? publicPtrDomainName,
  }) {
    _json = {
      'external_ipv6': ?externalIpv6,
      'external_ipv6_prefix_length': ?externalIpv6PrefixLength,
      'name': ?name,
      'network_tier': networkTier,
      'public_ptr_domain_name': ?publicPtrDomainName,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Ipv6AccessConfig].
  static const SchemanticType<Ipv6AccessConfig> $schema =
      _Ipv6AccessConfigTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get externalIpv6 {
    return _json['external_ipv6'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set externalIpv6(String? value) {
    if (value == null) {
      _json.remove('external_ipv6');
    } else {
      _json['external_ipv6'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get externalIpv6PrefixLength {
    return _json['external_ipv6_prefix_length'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set externalIpv6PrefixLength(String? value) {
    if (value == null) {
      _json.remove('external_ipv6_prefix_length');
    } else {
      _json['external_ipv6_prefix_length'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get name {
    return _json['name'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set name(String? value) {
    if (value == null) {
      _json.remove('name');
    } else {
      _json['name'] = value;
    }
  }

  String get networkTier {
    return _json['network_tier'] as String;
  }

  set networkTier(String value) {
    _json['network_tier'] = value;
  }

  String? get publicPtrDomainName {
    return _json['public_ptr_domain_name'] as String?;
  }

  set publicPtrDomainName(String? value) {
    if (value == null) {
      _json.remove('public_ptr_domain_name');
    } else {
      _json['public_ptr_domain_name'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Ipv6AccessConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _Ipv6AccessConfigTypeFactory
    extends SchemanticType<Ipv6AccessConfig> {
  const _Ipv6AccessConfigTypeFactory();

  @override
  Ipv6AccessConfig parse(Object? json) {
    return Ipv6AccessConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Ipv6AccessConfig',
    definition: $Schema
        .object(
          properties: {
            'external_ipv6': $Schema.string(
              description:
                  'The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance\'s zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance\'s subnetwork.',
            ),
            'external_ipv6_prefix_length': $Schema.string(
              description: 'The prefix length of the external IPv6 range.',
            ),
            'name': $Schema.string(
              description:
                  'The name of this access configuration. In ipv6AccessConfigs, the recommended name is External IPv6.',
            ),
            'network_tier': $Schema.string(
              description:
                  'The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6',
            ),
            'public_ptr_domain_name': $Schema.string(
              description:
                  'The domain name to be used when creating DNSv6 records for the external IPv6 ranges.',
            ),
          },
          required: ['network_tier'],
          description:
              'An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access.',
        )
        .value,
    dependencies: [],
  );
}

base class NetworkInterface {
  /// Creates a [NetworkInterface] from a JSON map.
  factory NetworkInterface.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  NetworkInterface._(this._json);

  NetworkInterface({
    String? igmpQuery,
    num? internalIpv6PrefixLength,
    String? ipv6Address,
    String? network,
    String? networkAttachment,
    String? networkIp,
    String? nicType,
    num? queueCount,
    String? stackType,
    String? subnetwork,
    String? subnetworkProject,
    num? vlan,
    List<AccessConfig>? accessConfig,
    List<AliasIpRange>? aliasIpRange,
    List<Ipv6AccessConfig>? ipv6AccessConfig,
  }) {
    _json = {
      'igmp_query': ?igmpQuery,
      'internal_ipv6_prefix_length': ?internalIpv6PrefixLength,
      'ipv6_address': ?ipv6Address,
      'network': ?network,
      'network_attachment': ?networkAttachment,
      'network_ip': ?networkIp,
      'nic_type': ?nicType,
      'queue_count': ?queueCount,
      'stack_type': ?stackType,
      'subnetwork': ?subnetwork,
      'subnetwork_project': ?subnetworkProject,
      'vlan': ?vlan,
      'access_config': ?accessConfig?.map((e) => e.toJson()).toList(),
      'alias_ip_range': ?aliasIpRange?.map((e) => e.toJson()).toList(),
      'ipv6_access_config': ?ipv6AccessConfig?.map((e) => e.toJson()).toList(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [NetworkInterface].
  static const SchemanticType<NetworkInterface> $schema =
      _NetworkInterfaceTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get igmpQuery {
    return _json['igmp_query'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set igmpQuery(String? value) {
    if (value == null) {
      _json.remove('igmp_query');
    } else {
      _json['igmp_query'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  num? get internalIpv6PrefixLength {
    return _json['internal_ipv6_prefix_length'] as num?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set internalIpv6PrefixLength(num? value) {
    if (value == null) {
      _json.remove('internal_ipv6_prefix_length');
    } else {
      _json['internal_ipv6_prefix_length'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get ipv6Address {
    return _json['ipv6_address'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set ipv6Address(String? value) {
    if (value == null) {
      _json.remove('ipv6_address');
    } else {
      _json['ipv6_address'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get network {
    return _json['network'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set network(String? value) {
    if (value == null) {
      _json.remove('network');
    } else {
      _json['network'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get networkAttachment {
    return _json['network_attachment'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set networkAttachment(String? value) {
    if (value == null) {
      _json.remove('network_attachment');
    } else {
      _json['network_attachment'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get networkIp {
    return _json['network_ip'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set networkIp(String? value) {
    if (value == null) {
      _json.remove('network_ip');
    } else {
      _json['network_ip'] = value;
    }
  }

  String? get nicType {
    return _json['nic_type'] as String?;
  }

  set nicType(String? value) {
    if (value == null) {
      _json.remove('nic_type');
    } else {
      _json['nic_type'] = value;
    }
  }

  num? get queueCount {
    return _json['queue_count'] as num?;
  }

  set queueCount(num? value) {
    if (value == null) {
      _json.remove('queue_count');
    } else {
      _json['queue_count'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get stackType {
    return _json['stack_type'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set stackType(String? value) {
    if (value == null) {
      _json.remove('stack_type');
    } else {
      _json['stack_type'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get subnetwork {
    return _json['subnetwork'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set subnetwork(String? value) {
    if (value == null) {
      _json.remove('subnetwork');
    } else {
      _json['subnetwork'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get subnetworkProject {
    return _json['subnetwork_project'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set subnetworkProject(String? value) {
    if (value == null) {
      _json.remove('subnetwork_project');
    } else {
      _json['subnetwork_project'] = value;
    }
  }

  num? get vlan {
    return _json['vlan'] as num?;
  }

  set vlan(num? value) {
    if (value == null) {
      _json.remove('vlan');
    } else {
      _json['vlan'] = value;
    }
  }

  List<AccessConfig>? get accessConfig {
    return (_json['access_config'] as List?)
        ?.map((e) => AccessConfig.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set accessConfig(List<AccessConfig>? value) {
    if (value == null) {
      _json.remove('access_config');
    } else {
      _json['access_config'] = value.toList();
    }
  }

  List<AliasIpRange>? get aliasIpRange {
    return (_json['alias_ip_range'] as List?)
        ?.map((e) => AliasIpRange.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set aliasIpRange(List<AliasIpRange>? value) {
    if (value == null) {
      _json.remove('alias_ip_range');
    } else {
      _json['alias_ip_range'] = value.toList();
    }
  }

  List<Ipv6AccessConfig>? get ipv6AccessConfig {
    return (_json['ipv6_access_config'] as List?)
        ?.map((e) => Ipv6AccessConfig.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set ipv6AccessConfig(List<Ipv6AccessConfig>? value) {
    if (value == null) {
      _json.remove('ipv6_access_config');
    } else {
      _json['ipv6_access_config'] = value.toList();
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [NetworkInterface] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _NetworkInterfaceTypeFactory
    extends SchemanticType<NetworkInterface> {
  const _NetworkInterfaceTypeFactory();

  @override
  NetworkInterface parse(Object? json) {
    return NetworkInterface._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'NetworkInterface',
    definition: $Schema
        .object(
          properties: {
            'igmp_query': $Schema.string(
              description:
                  'Indicates whether igmp query is enabled on the network interface or not. If enabled, also indicates the version of IGMP supported.',
            ),
            'internal_ipv6_prefix_length': $Schema.number(
              description:
                  'The prefix length of the primary internal IPv6 range.',
            ),
            'ipv6_address': $Schema.string(
              description:
                  'An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance\'s subnetwork.',
            ),
            'network': $Schema.string(
              description:
                  'The name or self_link of the network attached to this interface.',
            ),
            'network_attachment': $Schema.string(
              description:
                  'The URL of the network attachment that this interface should connect to in the following format: projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.',
            ),
            'network_ip': $Schema.string(
              description: 'The private IP address assigned to the instance.',
            ),
            'nic_type': $Schema.string(
              description:
                  'The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET, IDPF, MRDMA, and IRDMA',
            ),
            'queue_count': $Schema.number(
              description:
                  'The networking queue count that\'s specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified.',
            ),
            'stack_type': $Schema.string(
              description:
                  'The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used.',
            ),
            'subnetwork': $Schema.string(
              description:
                  'The name or self_link of the subnetwork attached to this interface.',
            ),
            'subnetwork_project': $Schema.string(
              description: 'The project in which the subnetwork belongs.',
            ),
            'vlan': $Schema.number(
              description:
                  'VLAN tag of a dynamic network interface, must be an integer in the range from 2 to 255 inclusively.',
            ),
            'access_config': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/AccessConfig'}),
            ),
            'alias_ip_range': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/AliasIpRange'}),
            ),
            'ipv6_access_config': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/Ipv6AccessConfig'}),
            ),
          },
          description: 'The networks attached to the instance.',
        )
        .value,
    dependencies: [
      AccessConfig.$schema,
      AliasIpRange.$schema,
      Ipv6AccessConfig.$schema,
    ],
  );
}

base class NetworkPerformanceConfig {
  /// Creates a [NetworkPerformanceConfig] from a JSON map.
  factory NetworkPerformanceConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  NetworkPerformanceConfig._(this._json);

  NetworkPerformanceConfig({required String totalEgressBandwidthTier}) {
    _json = {'total_egress_bandwidth_tier': totalEgressBandwidthTier};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [NetworkPerformanceConfig].
  static const SchemanticType<NetworkPerformanceConfig> $schema =
      _NetworkPerformanceConfigTypeFactory();

  String get totalEgressBandwidthTier {
    return _json['total_egress_bandwidth_tier'] as String;
  }

  set totalEgressBandwidthTier(String value) {
    _json['total_egress_bandwidth_tier'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [NetworkPerformanceConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _NetworkPerformanceConfigTypeFactory
    extends SchemanticType<NetworkPerformanceConfig> {
  const _NetworkPerformanceConfigTypeFactory();

  @override
  NetworkPerformanceConfig parse(Object? json) {
    return NetworkPerformanceConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'NetworkPerformanceConfig',
    definition: $Schema
        .object(
          properties: {
            'total_egress_bandwidth_tier': $Schema.string(
              description:
                  'The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT',
            ),
          },
          required: ['total_egress_bandwidth_tier'],
          description:
              'Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration.',
        )
        .value,
    dependencies: [],
  );
}

base class Params {
  /// Creates a [Params] from a JSON map.
  factory Params.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Params._(this._json);

  Params({Map<String, String>? resourceManagerTags}) {
    _json = {'resource_manager_tags': ?resourceManagerTags};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Params].
  static const SchemanticType<Params> $schema = _ParamsTypeFactory();

  Map<String, String>? get resourceManagerTags {
    return (_json['resource_manager_tags'] as Map?)?.cast<String, String>();
  }

  set resourceManagerTags(Map<String, String>? value) {
    if (value == null) {
      _json.remove('resource_manager_tags');
    } else {
      _json['resource_manager_tags'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Params] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ParamsTypeFactory extends SchemanticType<Params> {
  const _ParamsTypeFactory();

  @override
  Params parse(Object? json) {
    return Params._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Params',
    definition: $Schema
        .object(
          properties: {
            'resource_manager_tags': $Schema.object(
              description:
                  'A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.',
              additionalProperties: $Schema.string(),
            ),
          },
          description:
              'Stores additional params passed with the request, but not persisted as part of resource payload.',
        )
        .value,
    dependencies: [],
  );
}

base class SpecificReservation {
  /// Creates a [SpecificReservation] from a JSON map.
  factory SpecificReservation.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  SpecificReservation._(this._json);

  SpecificReservation({required String key, required List<String> values}) {
    _json = {'key': key, 'values': values};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [SpecificReservation].
  static const SchemanticType<SpecificReservation> $schema =
      _SpecificReservationTypeFactory();

  String get key {
    return _json['key'] as String;
  }

  set key(String value) {
    _json['key'] = value;
  }

  List<String> get values {
    return (_json['values'] as List).cast<String>();
  }

  set values(List<String> value) {
    _json['values'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [SpecificReservation] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SpecificReservationTypeFactory
    extends SchemanticType<SpecificReservation> {
  const _SpecificReservationTypeFactory();

  @override
  SpecificReservation parse(Object? json) {
    return SpecificReservation._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'SpecificReservation',
    definition: $Schema
        .object(
          properties: {
            'key': $Schema.string(
              description:
                  'Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify compute.googleapis.com/reservation-name as the key and specify the name of your reservation as the only value.',
            ),
            'values': $Schema.list(
              description:
                  'Corresponds to the label values of a reservation resource.',
              items: $Schema.string(),
            ),
          },
          required: ['key', 'values'],
          description:
              'Specifies the label selector for the reservation to use.',
        )
        .value,
    dependencies: [],
  );
}

base class ReservationAffinity {
  /// Creates a [ReservationAffinity] from a JSON map.
  factory ReservationAffinity.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ReservationAffinity._(this._json);

  ReservationAffinity({
    required String type,
    SpecificReservation? specificReservation,
  }) {
    _json = {
      'type': type,
      'specific_reservation': ?specificReservation?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ReservationAffinity].
  static const SchemanticType<ReservationAffinity> $schema =
      _ReservationAffinityTypeFactory();

  String get type {
    return _json['type'] as String;
  }

  set type(String value) {
    _json['type'] = value;
  }

  SpecificReservation? get specificReservation {
    return _json['specific_reservation'] == null
        ? null
        : SpecificReservation.fromJson(
            _json['specific_reservation'] as Map<String, dynamic>,
          );
  }

  set specificReservation(SpecificReservation? value) {
    if (value == null) {
      _json.remove('specific_reservation');
    } else {
      _json['specific_reservation'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ReservationAffinity] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ReservationAffinityTypeFactory
    extends SchemanticType<ReservationAffinity> {
  const _ReservationAffinityTypeFactory();

  @override
  ReservationAffinity parse(Object? json) {
    return ReservationAffinity._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ReservationAffinity',
    definition: $Schema
        .object(
          properties: {
            'type': $Schema.string(
              description:
                  'The type of reservation from which this instance can consume resources.',
            ),
            'specific_reservation': $Schema.fromMap({
              '\$ref': r'#/$defs/SpecificReservation',
            }),
          },
          required: ['type'],
          description:
              'Specifies the reservations that this instance can consume from.',
        )
        .value,
    dependencies: [SpecificReservation.$schema],
  );
}

base class LocalSsdRecoveryTimeout {
  /// Creates a [LocalSsdRecoveryTimeout] from a JSON map.
  factory LocalSsdRecoveryTimeout.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  LocalSsdRecoveryTimeout._(this._json);

  LocalSsdRecoveryTimeout({num? nanos, required num seconds}) {
    _json = {'nanos': ?nanos, 'seconds': seconds};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [LocalSsdRecoveryTimeout].
  static const SchemanticType<LocalSsdRecoveryTimeout> $schema =
      _LocalSsdRecoveryTimeoutTypeFactory();

  num? get nanos {
    return _json['nanos'] as num?;
  }

  set nanos(num? value) {
    if (value == null) {
      _json.remove('nanos');
    } else {
      _json['nanos'] = value;
    }
  }

  num get seconds {
    return _json['seconds'] as num;
  }

  set seconds(num value) {
    _json['seconds'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [LocalSsdRecoveryTimeout] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _LocalSsdRecoveryTimeoutTypeFactory
    extends SchemanticType<LocalSsdRecoveryTimeout> {
  const _LocalSsdRecoveryTimeoutTypeFactory();

  @override
  LocalSsdRecoveryTimeout parse(Object? json) {
    return LocalSsdRecoveryTimeout._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'LocalSsdRecoveryTimeout',
    definition: $Schema
        .object(
          properties: {
            'nanos': $Schema.number(
              description:
                  'Span of time that\'s a fraction of a second at nanosecond\nresolution. Durations less than one second are represented\nwith a 0 seconds field and a positive nanos field. Must\nbe from 0 to 999,999,999 inclusive.',
            ),
            'seconds': $Schema.number(
              description:
                  'Span of time at a resolution of a second.\nMust be from 0 to 315,576,000,000 inclusive.',
            ),
          },
          required: ['seconds'],
          description:
              'Specifies the maximum amount of time a Local Ssd Vm should wait while\n  recovery of the Local Ssd state is attempted. Its value should be in\n  between 0 and 168 hours with hour granularity and the default value being 1\n  hour.',
        )
        .value,
    dependencies: [],
  );
}

base class MaxRunDuration {
  /// Creates a [MaxRunDuration] from a JSON map.
  factory MaxRunDuration.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  MaxRunDuration._(this._json);

  MaxRunDuration({num? nanos, required num seconds}) {
    _json = {'nanos': ?nanos, 'seconds': seconds};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [MaxRunDuration].
  static const SchemanticType<MaxRunDuration> $schema =
      _MaxRunDurationTypeFactory();

  num? get nanos {
    return _json['nanos'] as num?;
  }

  set nanos(num? value) {
    if (value == null) {
      _json.remove('nanos');
    } else {
      _json['nanos'] = value;
    }
  }

  num get seconds {
    return _json['seconds'] as num;
  }

  set seconds(num value) {
    _json['seconds'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [MaxRunDuration] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _MaxRunDurationTypeFactory extends SchemanticType<MaxRunDuration> {
  const _MaxRunDurationTypeFactory();

  @override
  MaxRunDuration parse(Object? json) {
    return MaxRunDuration._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'MaxRunDuration',
    definition: $Schema
        .object(
          properties: {
            'nanos': $Schema.number(
              description:
                  'Span of time that\'s a fraction of a second at nanosecond\nresolution. Durations less than one second are represented\nwith a 0 seconds field and a positive nanos field. Must\nbe from 0 to 999,999,999 inclusive.',
            ),
            'seconds': $Schema.number(
              description:
                  'Span of time at a resolution of a second.\nMust be from 0 to 315,576,000,000 inclusive.',
            ),
          },
          required: ['seconds'],
          description: 'The timeout for new network connections to hosts.',
        )
        .value,
    dependencies: [],
  );
}

base class NodeAffinities {
  /// Creates a [NodeAffinities] from a JSON map.
  factory NodeAffinities.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  NodeAffinities._(this._json);

  NodeAffinities({
    required String key,
    required String operator,
    required List<String> values,
  }) {
    _json = {'key': key, 'operator': operator, 'values': values};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [NodeAffinities].
  static const SchemanticType<NodeAffinities> $schema =
      _NodeAffinitiesTypeFactory();

  String get key {
    return _json['key'] as String;
  }

  set key(String value) {
    _json['key'] = value;
  }

  String get operator {
    return _json['operator'] as String;
  }

  set operator(String value) {
    _json['operator'] = value;
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String> get values {
    return (_json['values'] as List).cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set values(List<String> value) {
    _json['values'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [NodeAffinities] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _NodeAffinitiesTypeFactory extends SchemanticType<NodeAffinities> {
  const _NodeAffinitiesTypeFactory();

  @override
  NodeAffinities parse(Object? json) {
    return NodeAffinities._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'NodeAffinities',
    definition: $Schema
        .object(
          properties: {
            'key': $Schema.string(),
            'operator': $Schema.string(),
            'values': $Schema.list(items: $Schema.string()),
          },
          required: ['key', 'operator', 'values'],
          description:
              'Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems.',
        )
        .value,
    dependencies: [],
  );
}

base class OnInstanceStopAction {
  /// Creates a [OnInstanceStopAction] from a JSON map.
  factory OnInstanceStopAction.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  OnInstanceStopAction._(this._json);

  OnInstanceStopAction({bool? discardLocalSsd}) {
    _json = {'discard_local_ssd': ?discardLocalSsd};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [OnInstanceStopAction].
  static const SchemanticType<OnInstanceStopAction> $schema =
      _OnInstanceStopActionTypeFactory();

  bool? get discardLocalSsd {
    return _json['discard_local_ssd'] as bool?;
  }

  set discardLocalSsd(bool? value) {
    if (value == null) {
      _json.remove('discard_local_ssd');
    } else {
      _json['discard_local_ssd'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [OnInstanceStopAction] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _OnInstanceStopActionTypeFactory
    extends SchemanticType<OnInstanceStopAction> {
  const _OnInstanceStopActionTypeFactory();

  @override
  OnInstanceStopAction parse(Object? json) {
    return OnInstanceStopAction._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'OnInstanceStopAction',
    definition: $Schema
        .object(
          properties: {
            'discard_local_ssd': $Schema.boolean(
              description:
                  'If true, the contents of any attached Local SSD disks will be discarded.',
            ),
          },
          description:
              'Defines the behaviour for instances with the instance_termination_action.',
        )
        .value,
    dependencies: [],
  );
}

base class Scheduling {
  /// Creates a [Scheduling] from a JSON map.
  factory Scheduling.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Scheduling._(this._json);

  Scheduling({
    bool? automaticRestart,
    num? availabilityDomain,
    String? instanceTerminationAction,
    num? minNodeCpus,
    String? onHostMaintenance,
    bool? preemptible,
    String? provisioningModel,
    String? terminationTime,
    LocalSsdRecoveryTimeout? localSsdRecoveryTimeout,
    MaxRunDuration? maxRunDuration,
    List<NodeAffinities>? nodeAffinities,
    OnInstanceStopAction? onInstanceStopAction,
  }) {
    _json = {
      'automatic_restart': ?automaticRestart,
      'availability_domain': ?availabilityDomain,
      'instance_termination_action': ?instanceTerminationAction,
      'min_node_cpus': ?minNodeCpus,
      'on_host_maintenance': ?onHostMaintenance,
      'preemptible': ?preemptible,
      'provisioning_model': ?provisioningModel,
      'termination_time': ?terminationTime,
      'local_ssd_recovery_timeout': ?localSsdRecoveryTimeout?.toJson(),
      'max_run_duration': ?maxRunDuration?.toJson(),
      'node_affinities': ?nodeAffinities?.map((e) => e.toJson()).toList(),
      'on_instance_stop_action': ?onInstanceStopAction?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Scheduling].
  static const SchemanticType<Scheduling> $schema = _SchedulingTypeFactory();

  bool? get automaticRestart {
    return _json['automatic_restart'] as bool?;
  }

  set automaticRestart(bool? value) {
    if (value == null) {
      _json.remove('automatic_restart');
    } else {
      _json['automatic_restart'] = value;
    }
  }

  num? get availabilityDomain {
    return _json['availability_domain'] as num?;
  }

  set availabilityDomain(num? value) {
    if (value == null) {
      _json.remove('availability_domain');
    } else {
      _json['availability_domain'] = value;
    }
  }

  String? get instanceTerminationAction {
    return _json['instance_termination_action'] as String?;
  }

  set instanceTerminationAction(String? value) {
    if (value == null) {
      _json.remove('instance_termination_action');
    } else {
      _json['instance_termination_action'] = value;
    }
  }

  num? get minNodeCpus {
    return _json['min_node_cpus'] as num?;
  }

  set minNodeCpus(num? value) {
    if (value == null) {
      _json.remove('min_node_cpus');
    } else {
      _json['min_node_cpus'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get onHostMaintenance {
    return _json['on_host_maintenance'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set onHostMaintenance(String? value) {
    if (value == null) {
      _json.remove('on_host_maintenance');
    } else {
      _json['on_host_maintenance'] = value;
    }
  }

  bool? get preemptible {
    return _json['preemptible'] as bool?;
  }

  set preemptible(bool? value) {
    if (value == null) {
      _json.remove('preemptible');
    } else {
      _json['preemptible'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get provisioningModel {
    return _json['provisioning_model'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set provisioningModel(String? value) {
    if (value == null) {
      _json.remove('provisioning_model');
    } else {
      _json['provisioning_model'] = value;
    }
  }

  String? get terminationTime {
    return _json['termination_time'] as String?;
  }

  set terminationTime(String? value) {
    if (value == null) {
      _json.remove('termination_time');
    } else {
      _json['termination_time'] = value;
    }
  }

  LocalSsdRecoveryTimeout? get localSsdRecoveryTimeout {
    return _json['local_ssd_recovery_timeout'] == null
        ? null
        : LocalSsdRecoveryTimeout.fromJson(
            _json['local_ssd_recovery_timeout'] as Map<String, dynamic>,
          );
  }

  set localSsdRecoveryTimeout(LocalSsdRecoveryTimeout? value) {
    if (value == null) {
      _json.remove('local_ssd_recovery_timeout');
    } else {
      _json['local_ssd_recovery_timeout'] = value;
    }
  }

  MaxRunDuration? get maxRunDuration {
    return _json['max_run_duration'] == null
        ? null
        : MaxRunDuration.fromJson(
            _json['max_run_duration'] as Map<String, dynamic>,
          );
  }

  set maxRunDuration(MaxRunDuration? value) {
    if (value == null) {
      _json.remove('max_run_duration');
    } else {
      _json['max_run_duration'] = value;
    }
  }

  List<NodeAffinities>? get nodeAffinities {
    return (_json['node_affinities'] as List?)
        ?.map((e) => NodeAffinities.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set nodeAffinities(List<NodeAffinities>? value) {
    if (value == null) {
      _json.remove('node_affinities');
    } else {
      _json['node_affinities'] = value.toList();
    }
  }

  OnInstanceStopAction? get onInstanceStopAction {
    return _json['on_instance_stop_action'] == null
        ? null
        : OnInstanceStopAction.fromJson(
            _json['on_instance_stop_action'] as Map<String, dynamic>,
          );
  }

  set onInstanceStopAction(OnInstanceStopAction? value) {
    if (value == null) {
      _json.remove('on_instance_stop_action');
    } else {
      _json['on_instance_stop_action'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Scheduling] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _SchedulingTypeFactory extends SchemanticType<Scheduling> {
  const _SchedulingTypeFactory();

  @override
  Scheduling parse(Object? json) {
    return Scheduling._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Scheduling',
    definition: $Schema
        .object(
          properties: {
            'automatic_restart': $Schema.boolean(
              description:
                  'Specifies if the instance should be restarted if it was terminated by Compute Engine (not a user).',
            ),
            'availability_domain': $Schema.number(
              description:
                  'Specifies the availability domain, which this instance should be scheduled on.',
            ),
            'instance_termination_action': $Schema.string(
              description:
                  'Specifies the action GCE should take when SPOT VM is preempted.',
            ),
            'min_node_cpus': $Schema.number(),
            'on_host_maintenance': $Schema.string(
              description:
                  'Describes maintenance behavior for the instance. One of MIGRATE or TERMINATE,',
            ),
            'preemptible': $Schema.boolean(
              description: 'Whether the instance is preemptible.',
            ),
            'provisioning_model': $Schema.string(
              description:
                  'Whether the instance is spot. If this is set as SPOT.',
            ),
            'termination_time': $Schema.string(
              description:
                  'Specifies the timestamp, when the instance will be terminated,\nin RFC3339 text format. If specified, the instance termination action\nwill be performed at the termination time.',
            ),
            'local_ssd_recovery_timeout': $Schema.fromMap({
              '\$ref': r'#/$defs/LocalSsdRecoveryTimeout',
            }),
            'max_run_duration': $Schema.fromMap({
              '\$ref': r'#/$defs/MaxRunDuration',
            }),
            'node_affinities': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/NodeAffinities'}),
            ),
            'on_instance_stop_action': $Schema.fromMap({
              '\$ref': r'#/$defs/OnInstanceStopAction',
            }),
          },
          description: 'The scheduling strategy being used by the instance.',
        )
        .value,
    dependencies: [
      LocalSsdRecoveryTimeout.$schema,
      MaxRunDuration.$schema,
      NodeAffinities.$schema,
      OnInstanceStopAction.$schema,
    ],
  );
}

base class ScratchDisk {
  /// Creates a [ScratchDisk] from a JSON map.
  factory ScratchDisk.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ScratchDisk._(this._json);

  ScratchDisk({String? deviceName, required String interface, num? size}) {
    _json = {'device_name': ?deviceName, 'interface': interface, 'size': ?size};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ScratchDisk].
  static const SchemanticType<ScratchDisk> $schema = _ScratchDiskTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get deviceName {
    return _json['device_name'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set deviceName(String? value) {
    if (value == null) {
      _json.remove('device_name');
    } else {
      _json['device_name'] = value;
    }
  }

  String get interface {
    return _json['interface'] as String;
  }

  set interface(String value) {
    _json['interface'] = value;
  }

  num? get size {
    return _json['size'] as num?;
  }

  set size(num? value) {
    if (value == null) {
      _json.remove('size');
    } else {
      _json['size'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ScratchDisk] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ScratchDiskTypeFactory extends SchemanticType<ScratchDisk> {
  const _ScratchDiskTypeFactory();

  @override
  ScratchDisk parse(Object? json) {
    return ScratchDisk._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ScratchDisk',
    definition: $Schema
        .object(
          properties: {
            'device_name': $Schema.string(
              description:
                  'Name with which the attached disk is accessible under /dev/disk/by-id/',
            ),
            'interface': $Schema.string(
              description:
                  'The disk interface used for attaching this disk. One of SCSI or NVME.',
            ),
            'size': $Schema.number(
              description:
                  'The size of the disk in gigabytes. One of 375 or 3000.',
            ),
          },
          required: ['interface'],
          description: 'The scratch disks attached to the instance.',
        )
        .value,
    dependencies: [],
  );
}

base class ServiceAccount {
  /// Creates a [ServiceAccount] from a JSON map.
  factory ServiceAccount.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ServiceAccount._(this._json);

  ServiceAccount({String? email, required List<String> scopes}) {
    _json = {'email': ?email, 'scopes': scopes};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ServiceAccount].
  static const SchemanticType<ServiceAccount> $schema =
      _ServiceAccountTypeFactory();

  /// Optional + Computed. Inferred from provider when null.
  String? get email {
    return _json['email'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set email(String? value) {
    if (value == null) {
      _json.remove('email');
    } else {
      _json['email'] = value;
    }
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String> get scopes {
    return (_json['scopes'] as List).cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set scopes(List<String> value) {
    _json['scopes'] = value;
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ServiceAccount] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ServiceAccountTypeFactory extends SchemanticType<ServiceAccount> {
  const _ServiceAccountTypeFactory();

  @override
  ServiceAccount parse(Object? json) {
    return ServiceAccount._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ServiceAccount',
    definition: $Schema
        .object(
          properties: {
            'email': $Schema.string(
              description: 'The service account e-mail address.',
            ),
            'scopes': $Schema.list(
              description: 'A list of service scopes.',
              items: $Schema.string(),
            ),
          },
          required: ['scopes'],
          description: 'The service account to attach to the instance.',
        )
        .value,
    dependencies: [],
  );
}

base class ShieldedInstanceConfig {
  /// Creates a [ShieldedInstanceConfig] from a JSON map.
  factory ShieldedInstanceConfig.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  ShieldedInstanceConfig._(this._json);

  ShieldedInstanceConfig({
    bool? enableIntegrityMonitoring,
    bool? enableSecureBoot,
    bool? enableVtpm,
  }) {
    _json = {
      'enable_integrity_monitoring': ?enableIntegrityMonitoring,
      'enable_secure_boot': ?enableSecureBoot,
      'enable_vtpm': ?enableVtpm,
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [ShieldedInstanceConfig].
  static const SchemanticType<ShieldedInstanceConfig> $schema =
      _ShieldedInstanceConfigTypeFactory();

  bool? get enableIntegrityMonitoring {
    return _json['enable_integrity_monitoring'] as bool?;
  }

  set enableIntegrityMonitoring(bool? value) {
    if (value == null) {
      _json.remove('enable_integrity_monitoring');
    } else {
      _json['enable_integrity_monitoring'] = value;
    }
  }

  bool? get enableSecureBoot {
    return _json['enable_secure_boot'] as bool?;
  }

  set enableSecureBoot(bool? value) {
    if (value == null) {
      _json.remove('enable_secure_boot');
    } else {
      _json['enable_secure_boot'] = value;
    }
  }

  bool? get enableVtpm {
    return _json['enable_vtpm'] as bool?;
  }

  set enableVtpm(bool? value) {
    if (value == null) {
      _json.remove('enable_vtpm');
    } else {
      _json['enable_vtpm'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [ShieldedInstanceConfig] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _ShieldedInstanceConfigTypeFactory
    extends SchemanticType<ShieldedInstanceConfig> {
  const _ShieldedInstanceConfigTypeFactory();

  @override
  ShieldedInstanceConfig parse(Object? json) {
    return ShieldedInstanceConfig._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'ShieldedInstanceConfig',
    definition: $Schema
        .object(
          properties: {
            'enable_integrity_monitoring': $Schema.boolean(
              description:
                  'Whether integrity monitoring is enabled for the instance.',
            ),
            'enable_secure_boot': $Schema.boolean(
              description: 'Whether secure boot is enabled for the instance.',
            ),
            'enable_vtpm': $Schema.boolean(
              description: 'Whether the instance uses vTPM.',
            ),
          },
          description: 'The shielded vm config being used by the instance.',
        )
        .value,
    dependencies: [],
  );
}

base class Timeouts {
  /// Creates a [Timeouts] from a JSON map.
  factory Timeouts.fromJson(Map<String, dynamic> json) => $schema.parse(json);

  Timeouts._(this._json);

  Timeouts({String? create, String? delete, String? update}) {
    _json = {'create': ?create, 'delete': ?delete, 'update': ?update};
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [Timeouts].
  static const SchemanticType<Timeouts> $schema = _TimeoutsTypeFactory();

  String? get create {
    return _json['create'] as String?;
  }

  set create(String? value) {
    if (value == null) {
      _json.remove('create');
    } else {
      _json['create'] = value;
    }
  }

  String? get delete {
    return _json['delete'] as String?;
  }

  set delete(String? value) {
    if (value == null) {
      _json.remove('delete');
    } else {
      _json['delete'] = value;
    }
  }

  String? get update {
    return _json['update'] as String?;
  }

  set update(String? value) {
    if (value == null) {
      _json.remove('update');
    } else {
      _json['update'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [Timeouts] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _TimeoutsTypeFactory extends SchemanticType<Timeouts> {
  const _TimeoutsTypeFactory();

  @override
  Timeouts parse(Object? json) {
    return Timeouts._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'Timeouts',
    definition: $Schema
        .object(
          properties: {
            'create': $Schema.string(),
            'delete': $Schema.string(),
            'update': $Schema.string(),
          },
          description: '',
        )
        .value,
    dependencies: [],
  );
}

base class GoogleComputeInstance {
  /// Creates a [GoogleComputeInstance] from a JSON map.
  factory GoogleComputeInstance.fromJson(Map<String, dynamic> json) =>
      $schema.parse(json);

  GoogleComputeInstance._(this._json);

  GoogleComputeInstance({
    bool? allowStoppingForUpdate,
    bool? canIpForward,
    bool? deletionProtection,
    String? description,
    String? desiredStatus,
    bool? enableDisplay,
    String? hostname,
    String? id,
    String? keyRevocationActionType,
    Map<String, String>? labels,
    required String machineType,
    Map<String, String>? metadata,
    String? metadataStartupScript,
    String? minCpuPlatform,
    required String name,
    String? project,
    List<String>? resourcePolicies,
    List<String>? tags,
    String? zone,
    AdvancedMachineFeatures? advancedMachineFeatures,
    List<AttachedDisk>? attachedDisk,
    required BootDisk bootDisk,
    ConfidentialInstanceConfig? confidentialInstanceConfig,
    List<GuestAccelerator>? guestAccelerator,
    InstanceEncryptionKey? instanceEncryptionKey,
    required List<NetworkInterface> networkInterface,
    NetworkPerformanceConfig? networkPerformanceConfig,
    Params? params,
    ReservationAffinity? reservationAffinity,
    Scheduling? scheduling,
    List<ScratchDisk>? scratchDisk,
    ServiceAccount? serviceAccount,
    ShieldedInstanceConfig? shieldedInstanceConfig,
    Timeouts? timeouts,
  }) {
    _json = {
      'allow_stopping_for_update': ?allowStoppingForUpdate,
      'can_ip_forward': ?canIpForward,
      'deletion_protection': ?deletionProtection,
      'description': ?description,
      'desired_status': ?desiredStatus,
      'enable_display': ?enableDisplay,
      'hostname': ?hostname,
      'id': ?id,
      'key_revocation_action_type': ?keyRevocationActionType,
      'labels': ?labels,
      'machine_type': machineType,
      'metadata': ?metadata,
      'metadata_startup_script': ?metadataStartupScript,
      'min_cpu_platform': ?minCpuPlatform,
      'name': name,
      'project': ?project,
      'resource_policies': ?resourcePolicies,
      'tags': ?tags,
      'zone': ?zone,
      'advanced_machine_features': ?advancedMachineFeatures?.toJson(),
      'attached_disk': ?attachedDisk?.map((e) => e.toJson()).toList(),
      'boot_disk': bootDisk.toJson(),
      'confidential_instance_config': ?confidentialInstanceConfig?.toJson(),
      'guest_accelerator': ?guestAccelerator?.map((e) => e.toJson()).toList(),
      'instance_encryption_key': ?instanceEncryptionKey?.toJson(),
      'network_interface': networkInterface.map((e) => e.toJson()).toList(),
      'network_performance_config': ?networkPerformanceConfig?.toJson(),
      'params': ?params?.toJson(),
      'reservation_affinity': ?reservationAffinity?.toJson(),
      'scheduling': ?scheduling?.toJson(),
      'scratch_disk': ?scratchDisk?.map((e) => e.toJson()).toList(),
      'service_account': ?serviceAccount?.toJson(),
      'shielded_instance_config': ?shieldedInstanceConfig?.toJson(),
      'timeouts': ?timeouts?.toJson(),
    };
  }

  late final Map<String, dynamic> _json;

  /// The JSON schema and type descriptor for [GoogleComputeInstance].
  static const SchemanticType<GoogleComputeInstance> $schema =
      _GoogleComputeInstanceTypeFactory();

  bool? get allowStoppingForUpdate {
    return _json['allow_stopping_for_update'] as bool?;
  }

  set allowStoppingForUpdate(bool? value) {
    if (value == null) {
      _json.remove('allow_stopping_for_update');
    } else {
      _json['allow_stopping_for_update'] = value;
    }
  }

  bool? get canIpForward {
    return _json['can_ip_forward'] as bool?;
  }

  set canIpForward(bool? value) {
    if (value == null) {
      _json.remove('can_ip_forward');
    } else {
      _json['can_ip_forward'] = value;
    }
  }

  bool? get deletionProtection {
    return _json['deletion_protection'] as bool?;
  }

  set deletionProtection(bool? value) {
    if (value == null) {
      _json.remove('deletion_protection');
    } else {
      _json['deletion_protection'] = value;
    }
  }

  String? get description {
    return _json['description'] as String?;
  }

  set description(String? value) {
    if (value == null) {
      _json.remove('description');
    } else {
      _json['description'] = value;
    }
  }

  String? get desiredStatus {
    return _json['desired_status'] as String?;
  }

  set desiredStatus(String? value) {
    if (value == null) {
      _json.remove('desired_status');
    } else {
      _json['desired_status'] = value;
    }
  }

  bool? get enableDisplay {
    return _json['enable_display'] as bool?;
  }

  set enableDisplay(bool? value) {
    if (value == null) {
      _json.remove('enable_display');
    } else {
      _json['enable_display'] = value;
    }
  }

  String? get hostname {
    return _json['hostname'] as String?;
  }

  set hostname(String? value) {
    if (value == null) {
      _json.remove('hostname');
    } else {
      _json['hostname'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get id {
    return _json['id'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set id(String? value) {
    if (value == null) {
      _json.remove('id');
    } else {
      _json['id'] = value;
    }
  }

  String? get keyRevocationActionType {
    return _json['key_revocation_action_type'] as String?;
  }

  set keyRevocationActionType(String? value) {
    if (value == null) {
      _json.remove('key_revocation_action_type');
    } else {
      _json['key_revocation_action_type'] = value;
    }
  }

  Map<String, String>? get labels {
    return (_json['labels'] as Map?)?.cast<String, String>();
  }

  set labels(Map<String, String>? value) {
    if (value == null) {
      _json.remove('labels');
    } else {
      _json['labels'] = value;
    }
  }

  String get machineType {
    return _json['machine_type'] as String;
  }

  set machineType(String value) {
    _json['machine_type'] = value;
  }

  Map<String, String>? get metadata {
    return (_json['metadata'] as Map?)?.cast<String, String>();
  }

  set metadata(Map<String, String>? value) {
    if (value == null) {
      _json.remove('metadata');
    } else {
      _json['metadata'] = value;
    }
  }

  String? get metadataStartupScript {
    return _json['metadata_startup_script'] as String?;
  }

  set metadataStartupScript(String? value) {
    if (value == null) {
      _json.remove('metadata_startup_script');
    } else {
      _json['metadata_startup_script'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get minCpuPlatform {
    return _json['min_cpu_platform'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set minCpuPlatform(String? value) {
    if (value == null) {
      _json.remove('min_cpu_platform');
    } else {
      _json['min_cpu_platform'] = value;
    }
  }

  String get name {
    return _json['name'] as String;
  }

  set name(String value) {
    _json['name'] = value;
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get project {
    return _json['project'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set project(String? value) {
    if (value == null) {
      _json.remove('project');
    } else {
      _json['project'] = value;
    }
  }

  List<String>? get resourcePolicies {
    return (_json['resource_policies'] as List?)?.cast<String>();
  }

  set resourcePolicies(List<String>? value) {
    if (value == null) {
      _json.remove('resource_policies');
    } else {
      _json['resource_policies'] = value;
    }
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  List<String>? get tags {
    return (_json['tags'] as List?)?.cast<String>();
  }

  /// Set semantics: order is irrelevant; duplicates are rejected by Terraform.
  set tags(List<String>? value) {
    if (value == null) {
      _json.remove('tags');
    } else {
      _json['tags'] = value;
    }
  }

  /// Optional + Computed. Inferred from provider when null.
  String? get zone {
    return _json['zone'] as String?;
  }

  /// Optional + Computed. Inferred from provider when null.
  set zone(String? value) {
    if (value == null) {
      _json.remove('zone');
    } else {
      _json['zone'] = value;
    }
  }

  AdvancedMachineFeatures? get advancedMachineFeatures {
    return _json['advanced_machine_features'] == null
        ? null
        : AdvancedMachineFeatures.fromJson(
            _json['advanced_machine_features'] as Map<String, dynamic>,
          );
  }

  set advancedMachineFeatures(AdvancedMachineFeatures? value) {
    if (value == null) {
      _json.remove('advanced_machine_features');
    } else {
      _json['advanced_machine_features'] = value;
    }
  }

  List<AttachedDisk>? get attachedDisk {
    return (_json['attached_disk'] as List?)
        ?.map((e) => AttachedDisk.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set attachedDisk(List<AttachedDisk>? value) {
    if (value == null) {
      _json.remove('attached_disk');
    } else {
      _json['attached_disk'] = value.toList();
    }
  }

  BootDisk get bootDisk {
    return BootDisk.fromJson(_json['boot_disk'] as Map<String, dynamic>);
  }

  set bootDisk(BootDisk value) {
    _json['boot_disk'] = value;
  }

  ConfidentialInstanceConfig? get confidentialInstanceConfig {
    return _json['confidential_instance_config'] == null
        ? null
        : ConfidentialInstanceConfig.fromJson(
            _json['confidential_instance_config'] as Map<String, dynamic>,
          );
  }

  set confidentialInstanceConfig(ConfidentialInstanceConfig? value) {
    if (value == null) {
      _json.remove('confidential_instance_config');
    } else {
      _json['confidential_instance_config'] = value;
    }
  }

  List<GuestAccelerator>? get guestAccelerator {
    return (_json['guest_accelerator'] as List?)
        ?.map((e) => GuestAccelerator.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set guestAccelerator(List<GuestAccelerator>? value) {
    if (value == null) {
      _json.remove('guest_accelerator');
    } else {
      _json['guest_accelerator'] = value.toList();
    }
  }

  InstanceEncryptionKey? get instanceEncryptionKey {
    return _json['instance_encryption_key'] == null
        ? null
        : InstanceEncryptionKey.fromJson(
            _json['instance_encryption_key'] as Map<String, dynamic>,
          );
  }

  set instanceEncryptionKey(InstanceEncryptionKey? value) {
    if (value == null) {
      _json.remove('instance_encryption_key');
    } else {
      _json['instance_encryption_key'] = value;
    }
  }

  List<NetworkInterface> get networkInterface {
    return (_json['network_interface'] as List)
        .map((e) => NetworkInterface.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set networkInterface(List<NetworkInterface> value) {
    _json['network_interface'] = value.toList();
  }

  NetworkPerformanceConfig? get networkPerformanceConfig {
    return _json['network_performance_config'] == null
        ? null
        : NetworkPerformanceConfig.fromJson(
            _json['network_performance_config'] as Map<String, dynamic>,
          );
  }

  set networkPerformanceConfig(NetworkPerformanceConfig? value) {
    if (value == null) {
      _json.remove('network_performance_config');
    } else {
      _json['network_performance_config'] = value;
    }
  }

  Params? get params {
    return _json['params'] == null
        ? null
        : Params.fromJson(_json['params'] as Map<String, dynamic>);
  }

  set params(Params? value) {
    if (value == null) {
      _json.remove('params');
    } else {
      _json['params'] = value;
    }
  }

  ReservationAffinity? get reservationAffinity {
    return _json['reservation_affinity'] == null
        ? null
        : ReservationAffinity.fromJson(
            _json['reservation_affinity'] as Map<String, dynamic>,
          );
  }

  set reservationAffinity(ReservationAffinity? value) {
    if (value == null) {
      _json.remove('reservation_affinity');
    } else {
      _json['reservation_affinity'] = value;
    }
  }

  Scheduling? get scheduling {
    return _json['scheduling'] == null
        ? null
        : Scheduling.fromJson(_json['scheduling'] as Map<String, dynamic>);
  }

  set scheduling(Scheduling? value) {
    if (value == null) {
      _json.remove('scheduling');
    } else {
      _json['scheduling'] = value;
    }
  }

  List<ScratchDisk>? get scratchDisk {
    return (_json['scratch_disk'] as List?)
        ?.map((e) => ScratchDisk.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  set scratchDisk(List<ScratchDisk>? value) {
    if (value == null) {
      _json.remove('scratch_disk');
    } else {
      _json['scratch_disk'] = value.toList();
    }
  }

  ServiceAccount? get serviceAccount {
    return _json['service_account'] == null
        ? null
        : ServiceAccount.fromJson(
            _json['service_account'] as Map<String, dynamic>,
          );
  }

  set serviceAccount(ServiceAccount? value) {
    if (value == null) {
      _json.remove('service_account');
    } else {
      _json['service_account'] = value;
    }
  }

  ShieldedInstanceConfig? get shieldedInstanceConfig {
    return _json['shielded_instance_config'] == null
        ? null
        : ShieldedInstanceConfig.fromJson(
            _json['shielded_instance_config'] as Map<String, dynamic>,
          );
  }

  set shieldedInstanceConfig(ShieldedInstanceConfig? value) {
    if (value == null) {
      _json.remove('shielded_instance_config');
    } else {
      _json['shielded_instance_config'] = value;
    }
  }

  Timeouts? get timeouts {
    return _json['timeouts'] == null
        ? null
        : Timeouts.fromJson(_json['timeouts'] as Map<String, dynamic>);
  }

  set timeouts(Timeouts? value) {
    if (value == null) {
      _json.remove('timeouts');
    } else {
      _json['timeouts'] = value;
    }
  }

  @override
  String toString() {
    return _json.toString();
  }

  /// Serializes this [GoogleComputeInstance] to a JSON map.
  Map<String, dynamic> toJson() {
    return _json;
  }
}

base class _GoogleComputeInstanceTypeFactory
    extends SchemanticType<GoogleComputeInstance> {
  const _GoogleComputeInstanceTypeFactory();

  @override
  GoogleComputeInstance parse(Object? json) {
    return GoogleComputeInstance._(json as Map<String, dynamic>);
  }

  @override
  JsonSchemaMetadata get schemaMetadata => JsonSchemaMetadata(
    name: 'GoogleComputeInstance',
    definition: $Schema
        .object(
          properties: {
            'allow_stopping_for_update': $Schema.boolean(
              description:
                  'If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail.',
            ),
            'can_ip_forward': $Schema.boolean(
              description:
                  'Whether sending and receiving of packets with non-matching source or destination IPs is allowed.',
            ),
            'deletion_protection': $Schema.boolean(
              description:
                  'Whether deletion protection is enabled on this instance.',
            ),
            'description': $Schema.string(
              description: 'A brief description of the resource.',
            ),
            'desired_status': $Schema.string(
              description:
                  'Desired status of the instance. Either "RUNNING", "SUSPENDED" or "TERMINATED".',
            ),
            'enable_display': $Schema.boolean(
              description: 'Whether the instance has virtual displays enabled.',
            ),
            'hostname': $Schema.string(
              description:
                  'A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression [a-z]([-a-z0-9]*[a-z0-9]), concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.',
            ),
            'id': $Schema.string(),
            'key_revocation_action_type': $Schema.string(
              description:
                  'Action to be taken when a customer\'s encryption key is revoked. Supports "STOP" and "NONE", with "NONE" being the default.',
            ),
            'labels': $Schema.object(
              description:
                  'A set of key/value label pairs assigned to the instance.\n\n				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\n				Please refer to the field \'effective_labels\' for all of the labels present on the resource.',
              additionalProperties: $Schema.string(),
            ),
            'machine_type': $Schema.string(
              description: 'The machine type to create.',
            ),
            'metadata': $Schema.object(
              description:
                  'Metadata key/value pairs made available within the instance.',
              additionalProperties: $Schema.string(),
            ),
            'metadata_startup_script': $Schema.string(
              description:
                  'Metadata startup scripts made available within the instance.',
            ),
            'min_cpu_platform': $Schema.string(
              description:
                  'The minimum CPU platform specified for the VM instance.',
            ),
            'name': $Schema.string(
              description:
                  'The name of the instance. One of name or self_link must be provided.',
            ),
            'project': $Schema.string(
              description:
                  'The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used.',
            ),
            'resource_policies': $Schema.list(
              description:
                  'A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.',
              items: $Schema.string(),
            ),
            'tags': $Schema.list(
              description: 'The list of tags attached to the instance.',
              items: $Schema.string(),
            ),
            'zone': $Schema.string(
              description:
                  'The zone of the instance. If self_link is provided, this value is ignored. If neither self_link nor zone are provided, the provider zone is used.',
            ),
            'advanced_machine_features': $Schema.fromMap({
              '\$ref': r'#/$defs/AdvancedMachineFeatures',
            }),
            'attached_disk': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/AttachedDisk'}),
            ),
            'boot_disk': $Schema.fromMap({'\$ref': r'#/$defs/BootDisk'}),
            'confidential_instance_config': $Schema.fromMap({
              '\$ref': r'#/$defs/ConfidentialInstanceConfig',
            }),
            'guest_accelerator': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/GuestAccelerator'}),
            ),
            'instance_encryption_key': $Schema.fromMap({
              '\$ref': r'#/$defs/InstanceEncryptionKey',
            }),
            'network_interface': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/NetworkInterface'}),
            ),
            'network_performance_config': $Schema.fromMap({
              '\$ref': r'#/$defs/NetworkPerformanceConfig',
            }),
            'params': $Schema.fromMap({'\$ref': r'#/$defs/Params'}),
            'reservation_affinity': $Schema.fromMap({
              '\$ref': r'#/$defs/ReservationAffinity',
            }),
            'scheduling': $Schema.fromMap({'\$ref': r'#/$defs/Scheduling'}),
            'scratch_disk': $Schema.list(
              items: $Schema.fromMap({'\$ref': r'#/$defs/ScratchDisk'}),
            ),
            'service_account': $Schema.fromMap({
              '\$ref': r'#/$defs/ServiceAccount',
            }),
            'shielded_instance_config': $Schema.fromMap({
              '\$ref': r'#/$defs/ShieldedInstanceConfig',
            }),
            'timeouts': $Schema.fromMap({'\$ref': r'#/$defs/Timeouts'}),
          },
          required: ['machine_type', 'name', 'boot_disk', 'network_interface'],
        )
        .value,
    dependencies: [
      AdvancedMachineFeatures.$schema,
      AttachedDisk.$schema,
      BootDisk.$schema,
      ConfidentialInstanceConfig.$schema,
      GuestAccelerator.$schema,
      InstanceEncryptionKey.$schema,
      NetworkInterface.$schema,
      NetworkPerformanceConfig.$schema,
      Params.$schema,
      ReservationAffinity.$schema,
      Scheduling.$schema,
      ScratchDisk.$schema,
      ServiceAccount.$schema,
      ShieldedInstanceConfig.$schema,
      Timeouts.$schema,
    ],
  );
}
