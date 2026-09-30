// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_version`.
const Set<String> _googleDialogflowVersionSensitive = <String>{};

/// Factory wrapper for `google_dialogflow_version`.
///
/// Dialogflow ES **version** — immutable snapshot of the per-project
/// ES agent (`parent` is `projects/<project>/agent`).
///
/// **Cost:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Intent Detection
/// Text Query Operations for Enterprise Essentials Agents `114B-F183-612D`
/// **$0.002/count**. billing-behavior: versions are design-time
/// snapshots; query SKUs fire only on DetectIntent (this factory never
/// invokes it). Standard-tier agents have no catalog query SKU. Enable
/// `dialogflow.googleapis.com` before apply. Create
/// [GoogleDialogflowAgent] first.
final class GoogleDialogflowVersion extends Resource {
  static const String tfType = 'google_dialogflow_version';

  GoogleDialogflowVersion({
    required super.localName,
    TfArg<String>? parent,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': ?parent,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowVersion>`.
  RefTo<GoogleDialogflowVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version_number` attribute.
  TfRef<num> get versionNumber => TfRef.attribute<num>(this, 'version_number');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');
}
