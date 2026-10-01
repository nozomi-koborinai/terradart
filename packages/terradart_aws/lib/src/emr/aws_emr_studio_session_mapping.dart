// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_studio_session_mapping`.
const Set<String> _awsEmrStudioSessionMappingSensitive = <String>{};

/// Emr Studio Session Mapping Identity enum for `identity_type`.
extension type const EmrStudioSessionMappingIdentityType._(TfArg<String> _)
    implements TfArg<String> {
  EmrStudioSessionMappingIdentityType.variable(String name)
    : this._(TfArg.variable(name));
  EmrStudioSessionMappingIdentityType.expression(String template)
    : this._(TfArg.expression(template));
  const EmrStudioSessionMappingIdentityType.arg(TfArg<String> arg)
    : this._(arg);

  static const user = EmrStudioSessionMappingIdentityType._(
    TfArgLiteral('USER'),
  );
  static const group = EmrStudioSessionMappingIdentityType._(
    TfArgLiteral('GROUP'),
  );

  static const List<EmrStudioSessionMappingIdentityType> values = [user, group];
}

/// Exactly one of `identity_id`, `identity_name` on `aws_emr_studio_session_mapping`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.identityId(...)`.
sealed class EmrStudioSessionMappingIdentity {
  const EmrStudioSessionMappingIdentity();

  /// Sets `identity_id`.
  const factory EmrStudioSessionMappingIdentity.identityId(
    TfArg<String> identityId,
  ) = EmrStudioSessionMappingIdentityId;

  /// Sets `identity_name`.
  const factory EmrStudioSessionMappingIdentity.identityName(
    TfArg<String> identityName,
  ) = EmrStudioSessionMappingIdentityName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [EmrStudioSessionMappingIdentity.identityId] choice: sets `identity_id`.
final class EmrStudioSessionMappingIdentityId
    extends EmrStudioSessionMappingIdentity {
  const EmrStudioSessionMappingIdentityId(this.identityId);

  final TfArg<String> identityId;

  @override
  String get blockKey => 'identity_id';

  @override
  Map<String, Object?> encode() => {'identity_id': identityId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'identity_id': identityId};
}

/// The [EmrStudioSessionMappingIdentity.identityName] choice: sets `identity_name`.
final class EmrStudioSessionMappingIdentityName
    extends EmrStudioSessionMappingIdentity {
  const EmrStudioSessionMappingIdentityName(this.identityName);

  final TfArg<String> identityName;

  @override
  String get blockKey => 'identity_name';

  @override
  Map<String, Object?> encode() => {'identity_name': identityName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'identity_name': identityName};
}

/// Factory wrapper for `aws_emr_studio_session_mapping`.
final class AwsEmrStudioSessionMapping extends Resource {
  static const String tfType = 'aws_emr_studio_session_mapping';

  AwsEmrStudioSessionMapping(
    super.localName, {
    required EmrStudioSessionMappingIdentity identity,
    required EmrStudioSessionMappingIdentityType identityType,
    TfArg<String>? region,
    required TfArg<String> sessionPolicyArn,
    required TfArg<String> studioId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...identity.argMap,
           'identity_type': identityType,
           'region': ?region,
           'session_policy_arn': sessionPolicyArn,
           'studio_id': studioId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrStudioSessionMappingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEmrStudioSessionMapping>`.
  RefTo<AwsEmrStudioSessionMapping> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `identity_id` attribute.
  TfRef<String> get identityId => TfRef.attribute<String>(this, 'identity_id');

  /// Reference to `identity_name` attribute.
  TfRef<String> get identityName =>
      TfRef.attribute<String>(this, 'identity_name');

  /// Reference to `identity_type` attribute.
  TfRef<String> get identityType =>
      TfRef.attribute<String>(this, 'identity_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `session_policy_arn` attribute.
  TfRef<String> get sessionPolicyArn =>
      TfRef.attribute<String>(this, 'session_policy_arn');

  /// Reference to `studio_id` attribute.
  TfRef<String> get studioId => TfRef.attribute<String>(this, 'studio_id');
}
