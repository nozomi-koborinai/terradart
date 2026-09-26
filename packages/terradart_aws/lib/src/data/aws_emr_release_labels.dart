// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emr_release_labels`.
const Set<String> _awsEmrReleaseLabelsSensitive = <String>{};

/// Typed helper for the `filters` block of
/// `aws_emr_release_labels` (derived from provider schema).
@immutable
final class DataEmrReleaseLabelsFilters {
  const DataEmrReleaseLabelsFilters({this.application, this.prefix});

  final TfArg<String>? application;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    if (application != null) 'application': application!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Factory wrapper for `aws_emr_release_labels`.
final class DataAwsEmrReleaseLabels extends Data {
  static const String tfType = 'aws_emr_release_labels';

  DataAwsEmrReleaseLabels({
    required super.localName,
    TfArg<String>? region,
    DataEmrReleaseLabelsFilters? filters,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (filters != null) 'filters': TfArg.literal(filters.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrReleaseLabelsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `release_labels` attribute.
  TfRef<List<String>> get releaseLabels =>
      TfRef.attribute<List<String>>(this, 'release_labels');
}
