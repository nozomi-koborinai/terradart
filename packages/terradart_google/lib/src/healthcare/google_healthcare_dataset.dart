// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_dataset`.
const Set<String> _googleHealthcareDatasetSensitive = <String>{};

/// Factory wrapper for `google_healthcare_dataset`.
///
/// A Healthcare `Dataset` is a toplevel logical grouping of `dicomStores`,
/// `fhirStores` and `hl7V2Stores`.
final class GoogleHealthcareDataset extends Resource {
  static const String tfType = 'google_healthcare_dataset';

  GoogleHealthcareDataset({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<String>? timeZone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (timeZone != null) 'time_zone': timeZone,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareDatasetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
