// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_domain_entry`.
const Set<String> _awsLightsailDomainEntrySensitive = <String>{};

/// Lightsail Domain Entry enum for `type`.
extension type const LightsailDomainEntryType._(TfArg<String> _)
    implements TfArg<String> {
  LightsailDomainEntryType.variable(String name) : this._(TfArg.variable(name));
  LightsailDomainEntryType.expression(String template)
    : this._(TfArg.expression(template));
  const LightsailDomainEntryType.arg(TfArg<String> arg) : this._(arg);

  static const a = LightsailDomainEntryType._(TfArgLiteral('A'));
  static const aaaa = LightsailDomainEntryType._(TfArgLiteral('AAAA'));
  static const cname = LightsailDomainEntryType._(TfArgLiteral('CNAME'));
  static const mx = LightsailDomainEntryType._(TfArgLiteral('MX'));
  static const ns = LightsailDomainEntryType._(TfArgLiteral('NS'));
  static const soa = LightsailDomainEntryType._(TfArgLiteral('SOA'));
  static const srv = LightsailDomainEntryType._(TfArgLiteral('SRV'));
  static const txt = LightsailDomainEntryType._(TfArgLiteral('TXT'));

  static const List<LightsailDomainEntryType> values = [
    a,
    aaaa,
    cname,
    mx,
    ns,
    soa,
    srv,
    txt,
  ];
}

/// Factory wrapper for `aws_lightsail_domain_entry`.
final class AwsLightsailDomainEntry extends Resource {
  static const String tfType = 'aws_lightsail_domain_entry';

  AwsLightsailDomainEntry(
    super.localName, {
    required TfArg<String> domainName,
    TfArg<bool>? isAlias,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> target,
    required LightsailDomainEntryType type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'is_alias': ?isAlias,
           'name': name,
           'region': ?region,
           'target': target,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailDomainEntrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLightsailDomainEntry>`.
  RefTo<AwsLightsailDomainEntry> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `is_alias` attribute.
  TfRef<bool> get isAlias => TfRef.attribute<bool>(this, 'is_alias');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
