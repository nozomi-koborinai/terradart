// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_m2_application`.
const Set<String> _awsM2ApplicationSensitive = <String>{};

/// Typed helper for the `definition` block of
/// `aws_m2_application` (derived from provider schema).
@immutable
final class M2ApplicationDefinition {
  const M2ApplicationDefinition({this.content, this.s3Location});

  final TfArg<String>? content;

  final TfArg<String>? s3Location;

  Map<String, Object?> encode() => {
    if (content != null) 'content': content!.toTfJson(),
    if (s3Location != null) 's3_location': s3Location!.toTfJson(),
  };
}

/// Factory wrapper for `aws_m2_application`.
final class AwsM2Application extends Resource {
  static const String tfType = 'aws_m2_application';

  AwsM2Application({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> engineType,
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
