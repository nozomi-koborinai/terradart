// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_host`.
const Set<String> _awsEc2HostSensitive = <String>{};

/// Ec2 Host Auto enum for `auto_placement`.
extension type const Ec2HostAutoPlacement._(TfArg<String> _)
    implements TfArg<String> {
  Ec2HostAutoPlacement.variable(String name) : this._(TfArg.variable(name));
  Ec2HostAutoPlacement.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2HostAutoPlacement.arg(TfArg<String> arg) : this._(arg);

  static const on = Ec2HostAutoPlacement._(TfArgLiteral('on'));
  static const off = Ec2HostAutoPlacement._(TfArgLiteral('off'));

  static const List<Ec2HostAutoPlacement> values = [on, off];
}

/// Ec2 Host enum for `host_recovery`.
extension type const Ec2HostRecovery._(TfArg<String> _)
    implements TfArg<String> {
  Ec2HostRecovery.variable(String name) : this._(TfArg.variable(name));
  Ec2HostRecovery.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2HostRecovery.arg(TfArg<String> arg) : this._(arg);

  static const on = Ec2HostRecovery._(TfArgLiteral('on'));
  static const off = Ec2HostRecovery._(TfArgLiteral('off'));

  static const List<Ec2HostRecovery> values = [on, off];
}

/// Exactly one of `instance_family`, `instance_type` on `aws_ec2_host`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.instanceFamily(...)`.
sealed class Ec2HostInstance {
  const Ec2HostInstance();

  /// Sets `instance_family`.
  const factory Ec2HostInstance.instanceFamily(TfArg<String> instanceFamily) =
      Ec2HostInstanceFamily;

  /// Sets `instance_type`.
  const factory Ec2HostInstance.instanceType(TfArg<String> instanceType) =
      Ec2HostInstanceType;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Ec2HostInstance.instanceFamily] choice: sets `instance_family`.
final class Ec2HostInstanceFamily extends Ec2HostInstance {
  const Ec2HostInstanceFamily(this.instanceFamily);

  final TfArg<String> instanceFamily;

  @internal
  @override
  String get blockKey => 'instance_family';

  @internal
  @override
  Map<String, Object?> encode() => {
    'instance_family': instanceFamily.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'instance_family': instanceFamily};
}

/// The [Ec2HostInstance.instanceType] choice: sets `instance_type`.
final class Ec2HostInstanceType extends Ec2HostInstance {
  const Ec2HostInstanceType(this.instanceType);

  final TfArg<String> instanceType;

  @internal
  @override
  String get blockKey => 'instance_type';

  @internal
  @override
  Map<String, Object?> encode() => {'instance_type': instanceType.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'instance_type': instanceType};
}

/// Factory wrapper for `aws_ec2_host`.
final class AwsEc2Host extends Resource {
  static const String tfType = 'aws_ec2_host';

  AwsEc2Host(
    super.localName, {
    TfArg<String>? assetId,
    Ec2HostAutoPlacement? autoPlacement,
    required TfArg<String> availabilityZone,
    Ec2HostRecovery? hostRecovery,
    required Ec2HostInstance instance,
    TfArg<String>? outpostArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'asset_id': ?assetId,
           'auto_placement': ?autoPlacement,
           'availability_zone': availabilityZone,
           'host_recovery': ?hostRecovery,
           ...instance.argMap,
           'outpost_arn': ?outpostArn,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2HostSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2Host>`.
  RefTo<AwsEc2Host> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `asset_id` attribute.
  TfRef<String> get assetId => TfRef.attribute<String>(this, 'asset_id');

  /// Reference to `auto_placement` attribute.
  TfRef<String> get autoPlacement =>
      TfRef.attribute<String>(this, 'auto_placement');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `host_recovery` attribute.
  TfRef<String> get hostRecovery =>
      TfRef.attribute<String>(this, 'host_recovery');

  /// Reference to `instance_family` attribute.
  TfRef<String> get instanceFamily =>
      TfRef.attribute<String>(this, 'instance_family');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `outpost_arn` attribute.
  TfRef<String> get outpostArn => TfRef.attribute<String>(this, 'outpost_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
