# nllint

Port of [suzuki-shunsuke/nllint](https://github.com/suzuki-shunsuke/nllint), which is a linter to check newlines at the end of files

## Usage

### Default setting

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/*',
      ],
      modules: [
        // without config
        'github_archive/github.com/lintnet-modules/nllint/main.jsonnet@a36d23d28936a85df8cad6e831c16854e9e2caa6:v0.2.0',
      ],
    },
  ],
}
```

### Enable `trim_space`

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/*',
      ],
      modules: [
        // with config
        {
          path: 'github_archive/github.com/lintnet-modules/nllint/main.jsonnet@a36d23d28936a85df8cad6e831c16854e9e2caa6:v0.2.0',
          config: {
            trim_space: true,
          },
        }
      ],
    },
  ],
}
```

## config's schema

[JSON Schema](main_config_schema.json)

## LICENSE

[MIT](LICENSE)
