// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_m2_application`.
const Set<String> _awsM2ApplicationSensitive = <String>{};

/// M2 Application Engine enum for `engine_type`.
enum M2ApplicationEngineType implements TerraformEnum {
  microfocus('microfocus'),
  bluage('bluage');

  const M2ApplicationEngineType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `definition` block of
/// `aws_m2_application` (derived from provider schema).
@immutable
final class M2ApplicationDefinition {
  const M2ApplicationDefinition({required this.definition});

  final M2ApplicationDefinitionDefinition definition;

  Map<String, Object?> encode() => {...definition.encode()};
}

/// Exactly one of `content`, `s3_location` on the `definition` block of `aws_m2_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.content(...)`.
sealed class M2ApplicationDefinitionDefinition {
  const M2ApplicationDefinitionDefinition();

  /// Sets `content`.
  const factory M2ApplicationDefinitionDefinition.content(
    TfArg<String> content,
  ) = M2ApplicationDefinitionDefinitionContent;

  /// Sets `s3_location`.
  const factory M2ApplicationDefinitionDefinition.s3Location(
    TfArg<String> s3Location,
  ) = M2ApplicationDefinitionDefinitionS3Location;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [M2ApplicationDefinitionDefinition.content] choice: sets `content`.
final class M2ApplicationDefinitionDefinitionContent
    extends M2ApplicationDefinitionDefinition {
  const M2ApplicationDefinitionDefinitionContent(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};
}

/// The [M2ApplicationDefinitionDefinition.s3Location] choice: sets `s3_location`.
final class M2ApplicationDefinitionDefinitionS3Location
    extends M2ApplicationDefinitionDefinition {
  const M2ApplicationDefinitionDefinitionS3Location(this.s3Location);

  final TfArg<String> s3Location;

  @override
  String get blockKey => 's3_location';

  @override
  Map<String, Object?> encode() => {'s3_location': s3Location.toTfJson()};
}

/// Factory wrapper for `aws_m2_application`.
final class AwsM2Application extends Resource {
  static const String tfType = 'aws_m2_application';

  AwsM2Application({
    required super.localName,
    TfArg<String>? description,
    required TfArg<M2ApplicationEngineType> engineType,
    TfArg<String>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? roleArn,
    TfArg<Map<String, String>>? tags,
    List<M2ApplicationDefinition>? definition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'engine_type': engineType,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (definition != null)
             'definition': TfArg.literal([
               for (final e in definition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsM2ApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsM2Application>`.
  RefTo<AwsM2Application> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `current_version` attribute.
  TfRef<num> get currentVersion =>
      TfRef.attribute<num>(this, 'current_version');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
