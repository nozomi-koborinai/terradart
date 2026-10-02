// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_memorydb_user`.
const Set<String> _awsMemorydbUserSensitive = <String>{
  'authentication_mode.passwords',
};

/// Typed helper for the `authentication_mode` block of
/// `aws_memorydb_user` (derived from provider schema).
@immutable
final class MemorydbUserAuthenticationMode {
  const MemorydbUserAuthenticationMode({this.passwords, required this.type});

  final Sensitive<List<String>>? passwords;

  final MemorydbUserType type;

  @internal
  Map<String, Object?> encode() => {
    'passwords': ?passwords?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const MemorydbUserType._(TfArg<String> _)
    implements TfArg<String> {
  MemorydbUserType.variable(String name) : this._(TfArg.variable(name));
  MemorydbUserType.expression(String template)
    : this._(TfArg.expression(template));
  const MemorydbUserType.arg(TfArg<String> arg) : this._(arg);

  static const password = MemorydbUserType._(TfArgLiteral('password'));
  static const iam = MemorydbUserType._(TfArgLiteral('iam'));

  static const List<MemorydbUserType> values = [password, iam];
}

/// Factory wrapper for `aws_memorydb_user`.
final class AwsMemorydbUser extends Resource {
  static const String tfType = 'aws_memorydb_user';

  AwsMemorydbUser(
    super.localName, {
    required TfArg<String> accessString,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> userName,
    required MemorydbUserAuthenticationMode authenticationMode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_string': accessString,
           'region': ?region,
           'tags': ?tags,
           'user_name': userName,
           'authentication_mode': TfArg.literal(authenticationMode.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMemorydbUser>`.
  RefTo<AwsMemorydbUser> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `minimum_engine_version` attribute.
  TfRef<String> get minimumEngineVersion =>
      TfRef.attribute<String>(this, 'minimum_engine_version');

  /// Reference to `access_string` attribute.
  TfRef<String> get accessString =>
      TfRef.attribute<String>(this, 'access_string');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
