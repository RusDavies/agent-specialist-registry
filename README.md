# Agent Specialist Registry

This is a public-safe fixture implementation of an agent specialist registry. It
demonstrates the registry shape, generated specialist artifacts, review gates,
role-scope boundaries, and compact invocation cards without relying on private
source corpora, approval evidence, lifecycle state, internal TODOs, or
secret-backed CI.

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

The check uses only files in this repository. It does not clone private
repositories, read deploy keys, or require repository secrets. CI runs the same
fixture check.

## Public-Safety Boundary

This repository intentionally excludes private generated artifacts and private
review history. It uses synthetic fixture review records and source text written
only for this demo.
