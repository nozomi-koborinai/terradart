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
sealed class EmrStudioSessionMappingIdentityIdOrIdentityName {
  const EmrStudioSessionMappingIdentityIdOrIdentityName();

  /// Sets `identity_id`.
  const factory EmrStudioSessionMappingIdentityIdOrIdentityName.identityId(
    TfArg<String> identityId,
  ) = EmrStudioSessionMappingIdentityIdOrIdentityNameIdentityId;

  /// Sets `identity_name`.
  const factory EmrStudioSessionMappingIdentityIdOrIdentityName.identityName(
    TfArg<String> identityName,
  ) = EmrStudioSessionMappingIdentityIdOrIdentityNameIdentityName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [EmrStudioSessionMappingIdentityIdOrIdentityName.identityId] choice: sets `identity_id`.
final class EmrStudioSessionMappingIdentityIdOrIdentityNameIdentityId
    extends EmrStudioSessionMappingIdentityIdOrIdentityName {
  const EmrStudioSessionMappingIdentityIdOrIdentityNameIdentityId(
    this.identityId,
  );

  final TfArg<String> identityId;

  @override
  String get blockKey => 'identity_id';

  @override
  Map<String, Object?> encode() => {'identity_id': identityId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'identity_id': identityId};
}

/// The [EmrStudioSessionMappingIdentityIdOrIdentityName.identityName] choice: sets `identity_name`.
final class EmrStudioSessionMappingIdentityIdOrIdentityNameIdentityName
    extends EmrStudioSessionMappingIdentityIdOrIdentityName {
  const EmrStudioSessionMappingIdentityIdOrIdentityNameIdentityName(
    this.identityName,
  );

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
    required EmrStudioSessionMappingIdentityIdOrIdentityName
    identityIdOrIdentityName,
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
           ...identityIdOrIdentityName.argMap,
           'identity_type': identityType,
           if (region != null) 'region': region,
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
}
