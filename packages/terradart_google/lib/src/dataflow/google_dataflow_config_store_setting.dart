// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataflow_config_store_setting`.
const Set<String> _googleDataflowConfigStoreSettingSensitive = <String>{};

/// Exactly one of `string_value`, `bool_value` on the `value` block of `google_dataflow_config_store_setting`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.stringValue(...)`.
sealed class DataflowConfigStoreSettingValue {
  const DataflowConfigStoreSettingValue();

  /// Sets `string_value`.
  const factory DataflowConfigStoreSettingValue.stringValue(
    TfArg<String> stringValue,
  ) = DataflowConfigStoreSettingStringValue;

  /// Sets `bool_value`.
  const factory DataflowConfigStoreSettingValue.boolValue(
    TfArg<bool> boolValue,
  ) = DataflowConfigStoreSettingBoolValue;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DataflowConfigStoreSettingValue.stringValue] choice: sets `string_value`.
final class DataflowConfigStoreSettingStringValue
    extends DataflowConfigStoreSettingValue {
  const DataflowConfigStoreSettingStringValue(this.stringValue);

  final TfArg<String> stringValue;

  @internal
  @override
  String get blockKey => 'string_value';

  @internal
  @override
  Map<String, Object?> encode() => {'string_value': stringValue.toTfJson()};
}

/// The [DataflowConfigStoreSettingValue.boolValue] choice: sets `bool_value`.
final class DataflowConfigStoreSettingBoolValue
    extends DataflowConfigStoreSettingValue {
  const DataflowConfigStoreSettingBoolValue(this.boolValue);

  final TfArg<bool> boolValue;

  @internal
  @override
  String get blockKey => 'bool_value';

  @internal
  @override
  Map<String, Object?> encode() => {'bool_value': boolValue.toTfJson()};
}

/// Factory wrapper for `google_dataflow_config_store_setting`.
///
/// A regional Dataflow Config Store setting on a project, folder, or
/// organization.
final class GoogleDataflowConfigStoreSetting extends Resource {
  static const String tfType = 'google_dataflow_config_store_setting';

  GoogleDataflowConfigStoreSetting(
    super.localName, {
    required TfArg<String> configStoreSettingId,
    TfArg<String>? deletionPolicy,
    required TfArg<String> location,
    required TfArg<String> parent,
    required DataflowConfigStoreSettingValue value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'config_store_setting_id': configStoreSettingId,
           'deletion_policy': ?deletionPolicy,
           'location': location,
           'parent': parent,
           'value': TfArg.literal(value.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataflowConfigStoreSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataflowConfigStoreSetting>`.
  RefTo<GoogleDataflowConfigStoreSetting> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `config_store_setting_id` attribute.
  TfRef<String> get configStoreSettingId =>
      TfRef.attribute<String>(this, 'config_store_setting_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
