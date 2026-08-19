// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_machine_image`.
const Set<String> _googleComputeMachineImageSensitive = <String>{
  'machine_image_encryption_key.raw_key',
};

/// Factory wrapper for `google_compute_machine_image`.
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
    TfArg<Map<String, dynamic>>? machineImageEncryptionKey,
    TfArg<Map<String, dynamic>>? params,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (guestFlush != null) 'guest_flush': guestFlush,
           'name': name,
           if (project != null) 'project': project,
           'source_instance': sourceInstance,
           if (machineImageEncryptionKey != null)
             'machine_image_encryption_key': machineImageEncryptionKey,
           if (params != null) 'params': params,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeMachineImageSensitive;
}
