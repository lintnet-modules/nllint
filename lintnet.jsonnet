// A configuration file of lintnet.
// https://lintnet.github.io/
function(param) {
  targets: [
    {
      data_files: [
        '**/*',
        '!testdata/**/*',
      ],
      lint_files: [
        {
          path: '**/main.jsonnet',
          config: {
            trim_space: true,
          },
        },
      ],
    },
  ],
}
