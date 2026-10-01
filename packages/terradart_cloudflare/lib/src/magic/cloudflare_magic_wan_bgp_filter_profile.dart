// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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
///
/// Magic WAN BGP filter profile: allows or denies (`matchAction`) the
/// routes that match one of the CIDR prefixes in `targets`. A target may
/// carry a `{X,Y}` suffix to match a range of prefix lengths.
final class CloudflareMagicWanBgpFilterProfile extends Resource {
  static const String tfType = 'cloudflare_magic_wan_bgp_filter_profile';

  CloudflareMagicWanBgpFilterProfile(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> name,
    required TfArg<MagicWanBgpFilterProfileMatchAction> matchAction,
    required TfArg<List<String>> targets,
    TfArg<String>? description,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'name': name,
           'match_action': matchAction,
           'targets': targets,
           'description': ?description,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMagicWanBgpFilterProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicWanBgpFilterProfile>`.
  RefTo<CloudflareMagicWanBgpFilterProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `match_action` attribute.
  TfRef<String> get matchAction =>
      TfRef.attribute<String>(this, 'match_action');

  /// Reference to `targets` attribute.
  TfRef<List<String>> get targets =>
      TfRef.attribute<List<String>>(this, 'targets');
}
