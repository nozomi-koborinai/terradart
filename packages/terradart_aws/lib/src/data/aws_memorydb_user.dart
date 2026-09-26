// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_memorydb_user`.
const Set<String> _awsMemorydbUserSensitive = <String>{};

/// Factory wrapper for `aws_memorydb_user`.
final class DataAwsMemorydbUser extends Data {
  static const String tfType = 'aws_memorydb_user';

  DataAwsMemorydbUser({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> userName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbUserSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_string` attribute.
  TfRef<String> get accessString =>
      TfRef.attribute<String>(this, 'access_string');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `authentication_mode` attribute.
  TfRef<List<Map<String, Object?>>> get authenticationMode =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'authentication_mode');

  /// Reference to `minimum_engine_version` attribute.
  TfRef<String> get minimumEngineVersion =>
      TfRef.attribute<String>(this, 'minimum_engine_version');
}
