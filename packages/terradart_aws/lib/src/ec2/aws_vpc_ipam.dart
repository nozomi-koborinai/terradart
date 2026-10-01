// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam`.
const Set<String> _awsVpcIpamSensitive = <String>{};

/// Vpc Ipam Metered enum for `metered_account`.
extension type const VpcIpamMeteredAccount._(TfArg<String> _)
    implements TfArg<String> {
  VpcIpamMeteredAccount.variable(String name) : this._(TfArg.variable(name));
  VpcIpamMeteredAccount.expression(String template)
    : this._(TfArg.expression(template));
  const VpcIpamMeteredAccount.arg(TfArg<String> arg) : this._(arg);

  static const ipamOwner = VpcIpamMeteredAccount._(TfArgLiteral('ipam-owner'));
  static const resourceOwner = VpcIpamMeteredAccount._(
    TfArgLiteral('resource-owner'),
  );

  static const List<VpcIpamMeteredAccount> values = [ipamOwner, resourceOwner];
}

/// Vpc Ipam enum for `tier`.
extension type const VpcIpamTier._(TfArg<String> _) implements TfArg<String> {
  VpcIpamTier.variable(String name) : this._(TfArg.variable(name));
  VpcIpamTier.expression(String template) : this._(TfArg.expression(template));
  const VpcIpamTier.arg(TfArg<String> arg) : this._(arg);

  static const free = VpcIpamTier._(TfArgLiteral('free'));
  static const advanced = VpcIpamTier._(TfArgLiteral('advanced'));

  static const List<VpcIpamTier> values = [free, advanced];
}

/// Typed helper for the `operating_regions` block of
/// `aws_vpc_ipam` (derived from provider schema).
@immutable
final class VpcIpamOperatingRegions {
  const VpcIpamOperatingRegions({required this.regionName});

  final TfArg<String> regionName;

  Map<String, Object?> encode() => {'region_name': regionName.toTfJson()};
}

/// Factory wrapper for `aws_vpc_ipam`.
final class AwsVpcIpam extends Resource {
  static const String tfType = 'aws_vpc_ipam';

  AwsVpcIpam(
    super.localName, {
    TfArg<bool>? cascade,
    TfArg<String>? description,
    TfArg<bool>? enablePrivateGua,
    VpcIpamMeteredAccount? meteredAccount,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    VpcIpamTier? tier,
    required List<VpcIpamOperatingRegions> operatingRegions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cascade': ?cascade,
           'description': ?description,
           'enable_private_gua': ?enablePrivateGua,
           'metered_account': ?meteredAccount,
           'region': ?region,
           'tags': ?tags,
           'tier': ?tier,
           'operating_regions': TfArg.literal([
             for (final e in operatingRegions) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcIpamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcIpam>`.
  RefTo<AwsVpcIpam> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_resource_discovery_association_id` attribute.
  TfRef<String> get defaultResourceDiscoveryAssociationId =>
      TfRef.attribute<String>(
        this,
        'default_resource_discovery_association_id',
      );

  /// Reference to `default_resource_discovery_id` attribute.
  TfRef<String> get defaultResourceDiscoveryId =>
      TfRef.attribute<String>(this, 'default_resource_discovery_id');

  /// Reference to `private_default_scope_id` attribute.
  TfRef<String> get privateDefaultScopeId =>
      TfRef.attribute<String>(this, 'private_default_scope_id');

  /// Reference to `public_default_scope_id` attribute.
  TfRef<String> get publicDefaultScopeId =>
      TfRef.attribute<String>(this, 'public_default_scope_id');

  /// Reference to `scope_count` attribute.
  TfRef<num> get scopeCount => TfRef.attribute<num>(this, 'scope_count');

  /// Reference to `cascade` attribute.
  TfRef<bool> get cascade => TfRef.attribute<bool>(this, 'cascade');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_private_gua` attribute.
  TfRef<bool> get enablePrivateGua =>
      TfRef.attribute<bool>(this, 'enable_private_gua');

  /// Reference to `metered_account` attribute.
  TfRef<String> get meteredAccount =>
      TfRef.attribute<String>(this, 'metered_account');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');
}
