// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_connection`.
const Set<String> _awsDxConnectionSensitive = <String>{};

/// Dx Connection Encryption enum for `encryption_mode`.
enum DxConnectionEncryptionMode implements TerraformEnum {
  noEncrypt('no_encrypt'),
  shouldEncrypt('should_encrypt'),
  mustEncrypt('must_encrypt');

  const DxConnectionEncryptionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_dx_connection`.
final class AwsDxConnection extends Resource {
  static const String tfType = 'aws_dx_connection';

  AwsDxConnection({
    required super.localName,
    required TfArg<String> bandwidth,
    TfArg<DxConnectionEncryptionMode>? encryptionMode,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? providerName,
    TfArg<String>? region,
    TfArg<bool>? requestMacsec,
    TfArg<bool>? skipDestroy,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bandwidth': bandwidth,
           'encryption_mode': ?encryptionMode,
           'location': location,
           'name': name,
           'provider_name': ?providerName,
           'region': ?region,
           'request_macsec': ?requestMacsec,
           'skip_destroy': ?skipDestroy,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDxConnection>`.
  RefTo<AwsDxConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `aws_device` attribute.
  TfRef<String> get awsDevice => TfRef.attribute<String>(this, 'aws_device');

  /// Reference to `has_logical_redundancy` attribute.
  TfRef<String> get hasLogicalRedundancy =>
      TfRef.attribute<String>(this, 'has_logical_redundancy');

  /// Reference to `jumbo_frame_capable` attribute.
  TfRef<bool> get jumboFrameCapable =>
      TfRef.attribute<bool>(this, 'jumbo_frame_capable');

  /// Reference to `macsec_capable` attribute.
  TfRef<bool> get macsecCapable =>
      TfRef.attribute<bool>(this, 'macsec_capable');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `partner_name` attribute.
  TfRef<String> get partnerName =>
      TfRef.attribute<String>(this, 'partner_name');

  /// Reference to `port_encryption_status` attribute.
  TfRef<String> get portEncryptionStatus =>
      TfRef.attribute<String>(this, 'port_encryption_status');

  /// Reference to `prefix_pool_size_ipv4` attribute.
  TfRef<num> get prefixPoolSizeIpv4 =>
      TfRef.attribute<num>(this, 'prefix_pool_size_ipv4');

  /// Reference to `prefix_pool_size_ipv6` attribute.
  TfRef<num> get prefixPoolSizeIpv6 =>
      TfRef.attribute<num>(this, 'prefix_pool_size_ipv6');

  /// Reference to `prefix_pool_unallocated_count_ipv4` attribute.
  TfRef<num> get prefixPoolUnallocatedCountIpv4 =>
      TfRef.attribute<num>(this, 'prefix_pool_unallocated_count_ipv4');

  /// Reference to `prefix_pool_unallocated_count_ipv6` attribute.
  TfRef<num> get prefixPoolUnallocatedCountIpv6 =>
      TfRef.attribute<num>(this, 'prefix_pool_unallocated_count_ipv6');

  /// Reference to `rate_limiter_status` attribute.
  TfRef<List<Map<String, Object?>>> get rateLimiterStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rate_limiter_status');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `vlan_id` attribute.
  TfRef<num> get vlanId => TfRef.attribute<num>(this, 'vlan_id');

  /// Reference to `bandwidth` attribute.
  TfRef<String> get bandwidthRef => TfRef.attribute<String>(this, 'bandwidth');

  /// Reference to `encryption_mode` attribute.
  TfRef<String> get encryptionModeRef =>
      TfRef.attribute<String>(this, 'encryption_mode');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerNameRef =>
      TfRef.attribute<String>(this, 'provider_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `request_macsec` attribute.
  TfRef<bool> get requestMacsecRef =>
      TfRef.attribute<bool>(this, 'request_macsec');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroyRef => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
