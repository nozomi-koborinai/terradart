/// Building blocks for tools that generate or read TerraDart code — the
/// `terradart wrap` generator and `terradart-migrate`. A Stack does not need
/// them, and they change without a deprecation period.
library;

export 'src/synth/json_encoder.dart' show TfJsonEncoder;
export 'src/tf_template.dart' show hasTemplateSequence, templateVariableNames;
