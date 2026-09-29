// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../magic/cloudflare_magic_wan_bgp_filter_profile.dart';

/// Sensitive field paths for `cloudflare_magic_wan_bgp_filter_profile`.
const Set<String> _cloudflareMagicWanBgpFilterProfileSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_wan_bgp_filter_profile`.
final class DataCloudflareMagicWanBgpFilterProfile extends Data {
  static const String tfType = 'cloudflare_magic_wan_bgp_filter_profile';

  DataCloudflareMagicWanBgpFilterProfile({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> profileId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'profile_id': profileId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareMagicWanBgpFilterProfileSensitive;

  /// A reference to the `cloudflare_magic_wan_bgp_filter_profile` this data source reads, for
  /// arguments typed `RefTo<CloudflareMagicWanBgpFilterProfile>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareMagicWanBgpFilterProfile> get ref => RefTo.read(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `match_action` attribute.
  TfRef<String> get matchAction =>
      TfRef.attribute<String>(this, 'match_action');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `targets` attribute.
  TfRef<List<String>> get targets =>
      TfRef.attribute<List<String>>(this, 'targets');
}
