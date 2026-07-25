// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_retrohunt`.
const Set<String> _googleChronicleRetrohuntSensitive = <String>{};

/// Typed helper for the `process_interval` block of
/// `google_chronicle_retrohunt` (derived from provider schema).
@immutable
final class ChronicleRetrohuntProcessInterval {
  const ChronicleRetrohuntProcessInterval({
    required this.endTime,
    required this.startTime,
  });

  final TfArg<String> endTime;

  final TfArg<String> startTime;

  Map<String, Object?> encode() => {
    'end_time': endTime.toTfJson(),
    'start_time': startTime.toTfJson(),
  };
}

/// Factory wrapper for `google_chronicle_retrohunt`.
///
/// Retrohunt is an execution of a Rule over a time range in the past.
///
/// Chronicle (Google SecOps) **retrohunt** — reprocesses historical events
/// for a compiled [GoogleChronicleRule] over [processInterval].
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// retrohunts re-evaluate large historical windows on an entitlement-gated
/// Chronicle instance and can drive substantial ingestion / package fees.
/// Not applyable on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. [rule] is the rule
/// resource name; [processInterval] is required.
final class GoogleChronicleRetrohunt extends Resource {
  static const String tfType = 'google_chronicle_retrohunt';

  GoogleChronicleRetrohunt({
    required super.localName,
    required TfArg<String> rule,
    required TfArg<String> location,
    required TfArg<String> instance,
    required ChronicleRetrohuntProcessInterval processInterval,
    TfArg<String>? retrohunt,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'rule': rule,
           'location': location,
           'instance': instance,
           'process_interval': TfArg.literal(processInterval.encode()),
           if (retrohunt != null) 'retrohunt': retrohunt,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleRetrohuntSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `execution_interval` attribute.
  TfRef<List<Map<String, Object?>>> get executionInterval =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'execution_interval');

  /// Reference to `progress_percentage` attribute.
  TfRef<num> get progressPercentage =>
      TfRef.attribute<num>(this, 'progress_percentage');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
