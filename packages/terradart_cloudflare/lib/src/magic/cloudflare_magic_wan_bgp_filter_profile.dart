// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_wan_bgp_filter_profile`.
const Set<String> _cloudflareMagicWanBgpFilterProfileSensitive = <String>{};

/// Magic Wan Bgp Filter Profile Match enum for `match_action`.
enum MagicWanBgpFilterProfileMatchAction implements TerraformEnum {
  allow('allow'),
  deny('deny');

  const MagicWanBgpFilterProfileMatchAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_magic_wan_bgp_filter_profile`.
final class CloudflareMagicWanBgpFilterProfile extends Resource {
  static const String tfType = 'cloudflare_magic_wan_bgp_filter_profile';

  CloudflareMagicWanBgpFilterProfile({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? description,
    required TfArg<MagicWanBgpFilterProfileMatchAction> matchAction,
    required TfArg<String> name,
    required TfArg<List<String>> targets,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (description != null) 'description': description,
           'match_action': matchAction,
           'name': name,
           'targets': targets,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMagicWanBgpFilterProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
