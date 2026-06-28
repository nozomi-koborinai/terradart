// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_key`.
const Set<String> _googleTagsTagKeySensitive = <String>{};

/// Purpose of a [GoogleTagsTagKey] — when set, the key (and its values)
/// drives a specific Google Cloud feature rather than free-form labelling.
enum TagsTagKeyPurpose implements TerraformEnum {
  /// Tag values are usable in VPC firewall rules as network tags.
  gceFirewall('GCE_FIREWALL'),

  /// Tag values participate in data-governance policies.
  dataGovernance('DATA_GOVERNANCE');

  const TagsTagKeyPurpose(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_tags_tag_key`.
///
/// A TagKey, used to group a set of TagValues.
final class GoogleTagsTagKey extends Resource {
  static const String tfType = 'google_tags_tag_key';

  GoogleTagsTagKey({
    required super.localName,
    required TfArg<String> shortName,
    required TfArg<String> parent,
    TfArg<String>? description,
    TfArg<TagsTagKeyPurpose>? purpose,
    TfArg<Map<String, String>>? purposeData,
    TfArg<String>? allowedValuesRegex,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'short_name': shortName,
           'parent': parent,
           if (description != null) 'description': description,
           if (purpose != null) 'purpose': purpose,
           if (purposeData != null) 'purpose_data': purposeData,
           if (allowedValuesRegex != null)
             'allowed_values_regex': allowedValuesRegex,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagKeySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `namespaced_name` attribute.
  TfRef<String> get namespacedName =>
      TfRef.attribute<String>(this, 'namespaced_name');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
