// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codecatalyst_dev_environment`.
const Set<String> _awsCodecatalystDevEnvironmentSensitive = <String>{};

/// Typed helper for the `repositories` block of
/// `aws_codecatalyst_dev_environment` (derived from provider schema).
@immutable
final class DataCodecatalystDevEnvironmentRepositories {
  const DataCodecatalystDevEnvironmentRepositories();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_codecatalyst_dev_environment`.
final class DataAwsCodecatalystDevEnvironment extends Data {
  static const String tfType = 'aws_codecatalyst_dev_environment';

  DataAwsCodecatalystDevEnvironment({
    required super.localName,
    TfArg<String>? alias,
    TfArg<String>? creatorId,
    required TfArg<String> envId,
    required TfArg<String> projectName,
    TfArg<String>? region,
    required TfArg<String> spaceName,
    TfArg<Map<String, String>>? tags,
    List<DataCodecatalystDevEnvironmentRepositories>? repositories,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (alias != null) 'alias': alias,
           if (creatorId != null) 'creator_id': creatorId,
           'env_id': envId,
           'project_name': projectName,
           if (region != null) 'region': region,
           'space_name': spaceName,
           if (tags != null) 'tags': tags,
           if (repositories != null)
             'repositories': TfArg.literal([
               for (final e in repositories) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodecatalystDevEnvironmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ides` attribute.
  TfRef<List<Map<String, Object?>>> get ides =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ides');

  /// Reference to `inactivity_timeout_minutes` attribute.
  TfRef<num> get inactivityTimeoutMinutes =>
      TfRef.attribute<num>(this, 'inactivity_timeout_minutes');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `persistent_storage` attribute.
  TfRef<List<Map<String, Object?>>> get persistentStorage =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'persistent_storage');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');
}
