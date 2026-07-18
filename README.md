# Agent Specialist Registry

This is a fixture implementation of an agent specialist registry. It
demonstrates the registry shape, generated specialist artifacts, review gates,
role-scope boundaries, and compact invocation cards using the public fixture
corpora in this repository.

The fixture keeps separate source corpora:

- `fixtures/docs-management-practices/` contains management-scope source
  anchors.
- `fixtures/docs-practitioner-practices/` contains practitioner-scope source
  anchors.

The generator reads those fixtures, writes generated specialist artifacts, and
then validates drift, review gates, role-scope boundaries, specialist cards,
and invocation fixtures.

## Run Locally

```bash
./scripts/ci_check.sh
```

The check uses only files in this repository and CI runs the same fixture check.

## Fixture Scope

This repository uses synthetic fixture review records and source text written
for the demo corpus.
