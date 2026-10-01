// example_synth_env.dart — the placeholder environment every example
// synthesizes with, whatever its provider: tool/example_synth_gates.dart
// (and every gate that reuses its synth) passes it to `dart run
// bin/infra.dart`, and ci.yml's terraform_validate matrix appends this
// script's output to $GITHUB_ENV.
//
// A key is an input some example reads from Platform.environment without a
// default. Values are placeholders: examples are only synthesized and
// terraform-validated, never applied.
//
// Usage (from repo root): dart tool/example_synth_env.dart  # KEY=VALUE lines
// ignore_for_file: avoid_print

const exampleSynthEnvironment = {
  'GCP_PROJECT_ID': 'ci-test-project-id',
  'DB_PASSWORD': 'ci-synth-placeholder',
};

void main() {
  for (final MapEntry(:key, :value) in exampleSynthEnvironment.entries) {
    print('$key=$value');
  }
}
