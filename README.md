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
        'github_archive/github.com/lintnet-modules/nllint/main.jsonnet@60a46a4fa4c0e7b1b95f57c479e756afa2f376e9:v0.1.0',
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
          path: 'github_archive/github.com/lintnet/modules/modules/nllint/main.jsonnet@60a46a4fa4c0e7b1b95f57c479e756afa2f376e9:v0.1.0',
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
