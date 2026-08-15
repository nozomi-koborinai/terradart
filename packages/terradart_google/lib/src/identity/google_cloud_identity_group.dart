// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_group`.
const Set<String> _googleCloudIdentityGroupSensitive = <String>{};

/// Cloud Identity Group Initial Group enum for `initial_group_config`.
enum CloudIdentityGroupInitialGroupConfig implements TerraformEnum {
  initialGroupConfigUnspecified('INITIAL_GROUP_CONFIG_UNSPECIFIED'),
  withInitialOwner('WITH_INITIAL_OWNER'),
  empty('EMPTY');

  const CloudIdentityGroupInitialGroupConfig(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `group_key` block of
/// `google_cloud_identity_group` (derived from provider schema).
@immutable
final class CloudIdentityGroupGroupKey {
  const CloudIdentityGroupGroupKey({required this.id, this.namespace});

  final TfArg<String> id;

  final TfArg<String>? namespace;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (namespace != null) 'namespace': namespace!.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_identity_group`.
///
/// A Cloud Identity resource representing a Group.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleCloudIdentityGroup extends Resource {
  static const String tfType = 'google_cloud_identity_group';

  GoogleCloudIdentityGroup({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<CloudIdentityGroupInitialGroupConfig>? initialGroupConfig,
    required TfArg<Map<String, String>> labels,
    required TfArg<String> parent,
    required CloudIdentityGroupGroupKey groupKey,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (displayName != null) 'display_name': displayName,
           if (initialGroupConfig != null)
             'initial_group_config': initialGroupConfig,
           'labels': labels,
           'parent': parent,
           'group_key': TfArg.literal(groupKey.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudIdentityGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_group_keys` attribute.
  TfRef<List<Map<String, Object?>>> get additionalGroupKeys =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'additional_group_keys',
      );

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
