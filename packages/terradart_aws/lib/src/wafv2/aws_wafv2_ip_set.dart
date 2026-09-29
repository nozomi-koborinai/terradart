// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_ip_set`.
const Set<String> _awsWafv2IpSetSensitive = <String>{};

/// Wafv2 Ip Set Ip Address enum for `ip_address_version`.
enum Wafv2IpSetIpAddressVersion implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const Wafv2IpSetIpAddressVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Wafv2 Ip Set enum for `scope`.
enum Wafv2IpSetScope implements TerraformEnum {
  cloudfront('CLOUDFRONT'),
  regional('REGIONAL');

  const Wafv2IpSetScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_wafv2_ip_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class Wafv2IpSetName {
  const Wafv2IpSetName();

  /// Sets `name`.
  const factory Wafv2IpSetName.name(TfArg<String> name) = Wafv2IpSetNameName;

  /// Sets `name_prefix`.
  const factory Wafv2IpSetName.namePrefix(TfArg<String> namePrefix) =
      Wafv2IpSetNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Wafv2IpSetName.name] choice: sets `name`.
final class Wafv2IpSetNameName extends Wafv2IpSetName {
  const Wafv2IpSetNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [Wafv2IpSetName.namePrefix] choice: sets `name_prefix`.
final class Wafv2IpSetNameNamePrefix extends Wafv2IpSetName {
  const Wafv2IpSetNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Factory wrapper for `aws_wafv2_ip_set`.
final class AwsWafv2IpSet extends Resource {
  static const String tfType = 'aws_wafv2_ip_set';

  AwsWafv2IpSet({
    required super.localName,
    TfArg<List<String>>? addresses,
    TfArg<String>? description,
    required TfArg<Wafv2IpSetIpAddressVersion> ipAddressVersion,
    Wafv2IpSetName? name,
    TfArg<String>? region,
    required TfArg<Wafv2IpSetScope> scope,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (addresses != null) 'addresses': addresses,
           if (description != null) 'description': description,
           'ip_address_version': ipAddressVersion,
           ...?name?.argMap,
           if (region != null) 'region': region,
           'scope': scope,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2IpSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `lock_token` attribute.
  TfRef<String> get lockToken => TfRef.attribute<String>(this, 'lock_token');
}
