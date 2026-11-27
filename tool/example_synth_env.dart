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
