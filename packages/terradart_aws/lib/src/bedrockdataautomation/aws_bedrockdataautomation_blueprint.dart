// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_bedrockdataautomation_blueprint`.
const Set<String> _awsBedrockdataautomationBlueprintSensitive = <String>{};

/// Bedrockdataautomation Blueprint enum for `type`.
extension type const BedrockdataautomationBlueprintType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockdataautomationBlueprintType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockdataautomationBlueprintType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockdataautomationBlueprintType.arg(TfArg<String> arg) : this._(arg);

  static const document = BedrockdataautomationBlueprintType._(
    TfArgLiteral('DOCUMENT'),
  );
  static const image = BedrockdataautomationBlueprintType._(
    TfArgLiteral('IMAGE'),
  );
  static const audio = BedrockdataautomationBlueprintType._(
    TfArgLiteral('AUDIO'),
  );
  static const video = BedrockdataautomationBlueprintType._(
    TfArgLiteral('VIDEO'),
  );

  static const List<BedrockdataautomationBlueprintType> values = [
    document,
    image,
    audio,
    video,
  ];
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_bedrockdataautomation_blueprint` (derived from provider schema).
@immutable
final class BedrockdataautomationBlueprintEncryptionConfiguration {
  const BedrockdataautomationBlueprintEncryptionConfiguration({
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

/// Factory wrapper for `aws_bedrockdataautomation_blueprint`.
final class AwsBedrockdataautomationBlueprint extends Resource {
  static const String tfType = 'aws_bedrockdataautomation_blueprint';

  AwsBedrockdataautomationBlueprint(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> schema,
    TfArg<Map<String, String>>? tags,
    required BedrockdataautomationBlueprintType type,
    List<BedrockdataautomationBlueprintEncryptionConfiguration>?
    encryptionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'schema': schema,
           'tags': ?tags,
           'type': type,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               for (final e in encryptionConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockdataautomationBlueprintSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockdataautomationBlueprint>`.
  RefTo<AwsBedrockdataautomationBlueprint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `blueprint_stage` attribute.
  TfRef<String> get blueprintStage =>
      TfRef.attribute<String>(this, 'blueprint_stage');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `schema` attribute.
  TfRef<String> get schema => TfRef.attribute<String>(this, 'schema');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
