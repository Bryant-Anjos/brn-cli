# brn cli

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Storybook](https://cdn.jsdelivr.net/gh/storybookjs/brand@master/badge/badge-storybook.svg)](https://storybook.js.org/)
[![Tests](https://github.com/Bryant-Anjos/brn-cli/actions/workflows/tests.yml/badge.svg)](https://github.com/Bryant-Anjos/brn-cli/actions/workflows/tests.yml)
[![NPM Publish](https://github.com/Bryant-Anjos/brn-cli/actions/workflows/npm.yml/badge.svg)](https://github.com/Bryant-Anjos/brn-cli/actions/workflows/npm.yml)

A cli to generate react native files created to be used together with [template expo with paper](https://github.com/Bryant-Anjos/template-expo-with-paper)

## Instalation

```bash
yarn global add brn-cli
```

or

```bash
npm i -g brn-cli
```

## Usage

- `generate|g <name>`  
it creates inside the src directory 4 files, they are a index component file, a styles file, a test file and a story file.

```bash
brn generate path/to/file
```

or

```bash
brn g path/to/file
```

|Usage|Generated files|
|---|---|
|![usage](images/usage.png)|![generated](images/generated.png)|
