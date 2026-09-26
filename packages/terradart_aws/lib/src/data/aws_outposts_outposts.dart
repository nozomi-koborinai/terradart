// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_outposts_outposts`.
const Set<String> _awsOutpostsOutpostsSensitive = <String>{};

/// Factory wrapper for `aws_outposts_outposts`.
final class DataAwsOutpostsOutposts extends Data {
  static const String tfType = 'aws_outposts_outposts';

  DataAwsOutpostsOutposts({
    required super.localName,
    TfArg<String>? availabilityZone,
    TfArg<String>? availabilityZoneId,
    TfArg<String>? ownerId,
    TfArg<String>? region,
    TfArg<String>? siteId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZone != null) 'availability_zone': availabilityZone,
           if (availabilityZoneId != null)
             'availability_zone_id': availabilityZoneId,
           if (ownerId != null) 'owner_id': ownerId,
           if (region != null) 'region': region,
           if (siteId != null) 'site_id': siteId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOutpostsOutpostsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
