# release-label
![GitHub release (latest SemVer)](https://img.shields.io/github/v/tag/stracquadaniolab/gh-action-release-label)

An action to generate standard release labels.

## Inputs

### `prefix`

**Required** prefix for the release label. Default: `release-`.

## Outputs

### `release_label`

A label

## Example usage

``` 
uses: stracquadaniolab/gh-action-release-label
with:
  prefix: 'release-'
```