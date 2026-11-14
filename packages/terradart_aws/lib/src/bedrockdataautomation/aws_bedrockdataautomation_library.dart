// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_bedrockdataautomation_library`.
const Set<String> _awsBedrockdataautomationLibrarySensitive = <String>{};

/// Typed helper for the `encryption_configuration` block of
/// `aws_bedrockdataautomation_library` (derived from provider schema).
@immutable
final class BedrockdataautomationLibraryEncryptionConfiguration {
  const BedrockdataautomationLibraryEncryptionConfiguration({
    this.kmsEncryptionContext,
    required this.kmsKeyId,
  });

  final TfArg<Map<String, String>>? kmsEncryptionContext;

  final RefTo<AwsKmsKey> kmsKeyId;

  @internal
  Map<String, Object?> encode() => {
    'kms_encryption_context': ?kmsEncryptionContext?.toTfJson(),
    'kms_key_id': kmsKeyId.encodeAs('arn').toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrockdataautomation_library`.
final class AwsBedrockdataautomationLibrary extends Resource {
  static const String tfType = 'aws_bedrockdataautomation_library';

  AwsBedrockdataautomationLibrary(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockdataautomationLibraryEncryptionConfiguration>?
    encryptionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               for (final e in encryptionConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockdataautomationLibrarySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockdataautomationLibrary>`.
  RefTo<AwsBedrockdataautomationLibrary> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `entity_types` attribute.
  TfRef<List<Map<String, Object?>>> get entityTypes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'entity_types');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
