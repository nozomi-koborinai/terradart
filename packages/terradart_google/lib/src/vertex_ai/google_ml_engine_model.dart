// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_ml_engine_model`.
const Set<String> _googleMlEngineModelSensitive = <String>{};

/// Typed helper for the `default_version` block of
/// `google_ml_engine_model` (derived from provider schema).
@immutable
final class MlEngineModelDefaultVersion {
  const MlEngineModelDefaultVersion({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `google_ml_engine_model`.
///
/// Represents a machine learning solution.
///
/// A model can have multiple versions, each of which is a deployed, trained
/// model ready to receive prediction requests. The model itself is just a
/// container.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleMlEngineModel extends Resource {
  static const String tfType = 'google_ml_engine_model';

  GoogleMlEngineModel({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> name,
    TfArg<bool>? onlinePredictionConsoleLogging,
    TfArg<bool>? onlinePredictionLogging,
    TfArg<String>? project,
    TfArg<List<String>>? regions,
    MlEngineModelDefaultVersion? defaultVersion,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           'name': name,
           if (onlinePredictionConsoleLogging != null)
             'online_prediction_console_logging':
                 onlinePredictionConsoleLogging,
           if (onlinePredictionLogging != null)
             'online_prediction_logging': onlinePredictionLogging,
           if (project != null) 'project': project,
           if (regions != null) 'regions': regions,
           if (defaultVersion != null)
             'default_version': TfArg.literal(defaultVersion.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleMlEngineModelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
