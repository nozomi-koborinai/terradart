// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_compute_machine_image`.
const Set<String> _googleComputeMachineImageSensitive = <String>{
  'machine_image_encryption_key.raw_key',
};

/// Typed helper for the `machine_image_encryption_key` block of
/// `google_compute_machine_image` (derived from provider schema).
@immutable
final class ComputeMachineImageMachineImageEncryptionKey {
  const ComputeMachineImageMachineImageEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
  });

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<String>? kmsKeyServiceAccount;

  final TfArg<String>? rawKey;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'kms_key_service_account': ?kmsKeyServiceAccount?.toTfJson(),
    'raw_key': ?rawKey?.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_machine_image` (derived from provider schema).
@immutable
final class ComputeMachineImageParams {
  const ComputeMachineImageParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_machine_image`.
///
/// Represents a Machine Image resource. Machine images store all the
/// configuration, metadata, permissions, and data from one or more disks
/// required to create a Virtual machine (VM) instance.
final class GoogleComputeMachineImage extends Resource {
  static const String tfType = 'google_compute_machine_image';

  GoogleComputeMachineImage({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<bool>? guestFlush,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> sourceInstance,
    ComputeMachineImageMachineImageEncryptionKey? machineImageEncryptionKey,
    ComputeMachineImageParams? params,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'guest_flush': ?guestFlush,
           'name': name,
           'project': ?project,
           'source_instance': sourceInstance,
           if (machineImageEncryptionKey != null)
             'machine_image_encryption_key': TfArg.literal(
               machineImageEncryptionKey.encode(),
             ),
           if (params != null) 'params': TfArg.literal(params.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeMachineImageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeMachineImage>`.
  RefTo<GoogleComputeMachineImage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `storage_locations` attribute.
  TfRef<List<String>> get storageLocations =>
      TfRef.attribute<List<String>>(this, 'storage_locations');
}
