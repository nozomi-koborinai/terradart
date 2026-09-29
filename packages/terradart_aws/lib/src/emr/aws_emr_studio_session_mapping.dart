// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_studio_session_mapping`.
const Set<String> _awsEmrStudioSessionMappingSensitive = <String>{};

/// Emr Studio Session Mapping Identity enum for `identity_type`.
enum EmrStudioSessionMappingIdentityType implements TerraformEnum {
  user('USER'),
  group('GROUP');

  const EmrStudioSessionMappingIdentityType(this.terraformValue);
  @override
  final String terraformValue;
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
  ) = EmrStudioSessionMappingIdentityIdentityId;

  /// Sets `identity_name`.
  const factory EmrStudioSessionMappingIdentity.identityName(
    TfArg<String> identityName,
  ) = EmrStudioSessionMappingIdentityIdentityName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [EmrStudioSessionMappingIdentity.identityId] choice: sets `identity_id`.
final class EmrStudioSessionMappingIdentityIdentityId
    extends EmrStudioSessionMappingIdentity {
  const EmrStudioSessionMappingIdentityIdentityId(this.identityId);

  final TfArg<String> identityId;

  @override
  String get blockKey => 'identity_id';

  @override
  Map<String, Object?> encode() => {'identity_id': identityId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'identity_id': identityId};
}

/// The [EmrStudioSessionMappingIdentity.identityName] choice: sets `identity_name`.
final class EmrStudioSessionMappingIdentityIdentityName
    extends EmrStudioSessionMappingIdentity {
  const EmrStudioSessionMappingIdentityIdentityName(this.identityName);

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

  AwsEmrStudioSessionMapping({
    required super.localName,
    required EmrStudioSessionMappingIdentity identity,
    required TfArg<EmrStudioSessionMappingIdentityType> identityType,
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
           if (region != null) 'region': region,
           'session_policy_arn': sessionPolicyArn,
           'studio_id': studioId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrStudioSessionMappingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
