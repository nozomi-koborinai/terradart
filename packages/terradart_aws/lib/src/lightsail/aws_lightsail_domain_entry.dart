// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_domain_entry`.
const Set<String> _awsLightsailDomainEntrySensitive = <String>{};

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
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           if (isAlias != null) 'is_alias': isAlias,
           'name': name,
           if (region != null) 'region': region,
           'target': target,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailDomainEntrySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
