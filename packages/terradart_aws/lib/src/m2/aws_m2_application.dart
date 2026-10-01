// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_m2_application`.
const Set<String> _awsM2ApplicationSensitive = <String>{};

/// M2 Application Engine enum for `engine_type`.
extension type const M2ApplicationEngineType._(TfArg<String> _)
    implements TfArg<String> {
  M2ApplicationEngineType.variable(String name) : this._(TfArg.variable(name));
  M2ApplicationEngineType.expression(String template)
    : this._(TfArg.expression(template));
  const M2ApplicationEngineType.arg(TfArg<String> arg) : this._(arg);

  static const microfocus = M2ApplicationEngineType._(
    TfArgLiteral('microfocus'),
  );
  static const bluage = M2ApplicationEngineType._(TfArgLiteral('bluage'));

  static const List<M2ApplicationEngineType> values = [microfocus, bluage];
}

/// Exactly one of `content`, `s3_location` on the `definition` block of `aws_m2_application`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.content(...)`.
sealed class M2ApplicationDefinition {
  const M2ApplicationDefinition();

  /// Sets `content`.
  const factory M2ApplicationDefinition.content(TfArg<String> content) =
      M2ApplicationDefinitionContent;

  /// Sets `s3_location`.
  const factory M2ApplicationDefinition.s3Location(TfArg<String> s3Location) =
      M2ApplicationDefinitionS3Location;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [M2ApplicationDefinition.content] choice: sets `content`.
final class M2ApplicationDefinitionContent extends M2ApplicationDefinition {
  const M2ApplicationDefinitionContent(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};
}

/// The [M2ApplicationDefinition.s3Location] choice: sets `s3_location`.
final class M2ApplicationDefinitionS3Location extends M2ApplicationDefinition {
  const M2ApplicationDefinitionS3Location(this.s3Location);

  final TfArg<String> s3Location;

  @override
  String get blockKey => 's3_location';

  @override
  Map<String, Object?> encode() => {'s3_location': s3Location.toTfJson()};
}

/// Factory wrapper for `aws_m2_application`.
final class AwsM2Application extends Resource {
  static const String tfType = 'aws_m2_application';

  AwsM2Application(
    super.localName, {
    TfArg<String>? description,
    required M2ApplicationEngineType engineType,
    RefTo<AwsKmsKey>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    TfArg<Map<String, String>>? tags,
    List<M2ApplicationDefinition>? definition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'engine_type': engineType,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'tags': ?tags,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `engine_type` attribute.
  TfRef<String> get engineType => TfRef.attribute<String>(this, 'engine_type');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
