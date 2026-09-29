// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_domain_entry`.
const Set<String> _awsLightsailDomainEntrySensitive = <String>{};

/// Lightsail Domain Entry enum for `type`.
enum LightsailDomainEntryType implements TerraformEnum {
  a('A'),
  aaaa('AAAA'),
  cname('CNAME'),
  mx('MX'),
  ns('NS'),
  soa('SOA'),
  srv('SRV'),
  txt('TXT');

  const LightsailDomainEntryType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_lightsail_domain_entry`.
final class AwsLightsailDomainEntry extends Resource {
  static const String tfType = 'aws_lightsail_domain_entry';

  AwsLightsailDomainEntry({
    required super.localName,
    required TfArg<String> domainName,
    TfArg<bool>? isAlias,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> target,
    required TfArg<LightsailDomainEntryType> type,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
