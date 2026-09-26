// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53profiles_profiles`.
const Set<String> _awsRoute53profilesProfilesSensitive = <String>{};

/// Factory wrapper for `aws_route53profiles_profiles`.
final class DataAwsRoute53profilesProfiles extends Data {
  static const String tfType = 'aws_route53profiles_profiles';

  DataAwsRoute53profilesProfiles({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53profilesProfilesSensitive;

  /// Reference to `profiles` attribute.
  TfRef<List<Map<String, Object?>>> get profiles =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'profiles');
}
