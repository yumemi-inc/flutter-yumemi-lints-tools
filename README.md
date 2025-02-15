[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)

## Overview

This project provides tools for managing the [`yumemi_lints`] package:
- Detecting differences in Dart/Flutter lint rules between versions
- Automating lint rule updates

Originally, this project was part of the [`yumemi_lints`] repository. However, it was moved to a separate repository to simplify management. While [`yumemi_lints`] supports a wide range of Dart SDK versions (2.17 and above), this project only needs to support a single Dart SDK version. This separation helps reduce complexity in development environment setup and CI configuration.

## Tools

This project provides tools:

- **check_lint_rules_identity**
- **update_lint_rules**

### check_lint_rules_identity

A tool to detect differences in lint rules between different versions of the [`yumemi_lints`] package. It helps identify any changes or inconsistencies in the lint rules across versions.

```shell
dart run check_lint_rules_identity <version_paths_file> <lint_rules_dir>
```

### update_lint_rules

A tool to automatically update lint rules in the [`yumemi_lints`] package. It ensures that the lint rules are kept up-to-date with the latest recommendations and best practices.

```shell
dart run update_lint_rules <lint_rules_dir>
```

## How to contribute

See [Contributor Guide] for contributing conventions.

### Contributors

<table>
<tr>
    <td align="center" style="word-wrap: break-word; width: 150.0; height: 150.0">
        <a href=https://github.com/blendthink>
            <img src=https://avatars.githubusercontent.com/u/32213113?v=4 width="100;"  alt=blendthink/>
            <br />
            <sub style="font-size:14px"><b>blendthink</b></sub>
        </a>
    </td>
    <td align="center" style="word-wrap: break-word; width: 150.0; height: 150.0">
        <a href=https://github.com/morikann>
            <img src=https://avatars.githubusercontent.com/u/70502790?v=4 width="100;"  alt=Kanta Mori/>
            <br />
            <sub style="font-size:14px"><b>Kanta Mori</b></sub>
        </a>
    </td>
    <td align="center" style="word-wrap: break-word; width: 150.0; height: 150.0">
        <a href=https://github.com/Yamasaki-pan961>
            <img src=https://avatars.githubusercontent.com/u/54800851?v=4 width="100;"  alt=Yamasaki-pan961/>
            <br />
            <sub style="font-size:14px"><b>Yamasaki-pan961</b></sub>
        </a>
    </td>
    <td align="center" style="word-wrap: break-word; width: 150.0; height: 150.0">
        <a href=https://github.com/masa-futa>
            <img src=https://avatars.githubusercontent.com/u/87967842?v=4 width="100;"  alt=masa-futa/>
            <br />
            <sub style="font-size:14px"><b>masa-futa</b></sub>
        </a>
    </td>
    <td align="center" style="word-wrap: break-word; width: 150.0; height: 150.0">
        <a href=https://github.com/trm11tkr>
            <img src=https://avatars.githubusercontent.com/u/89247188?v=4 width="100;"  alt=trm11tkr/>
            <br />
            <sub style="font-size:14px"><b>trm11tkr</b></sub>
        </a>
    </td>
    <td align="center" style="word-wrap: break-word; width: 150.0; height: 150.0">
        <a href=https://github.com/K9i-0>
            <img src=https://avatars.githubusercontent.com/u/90010509?v=4 width="100;"  alt=K9i - Kota Hayashi/>
            <br />
            <sub style="font-size:14px"><b>K9i - Kota Hayashi</b></sub>
        </a>
    </td>
</tr>
<tr>
    <td align="center" style="word-wrap: break-word; width: 150.0; height: 150.0">
        <a href=https://github.com/YumNumm>
            <img src=https://avatars.githubusercontent.com/u/73390859?v=4 width="100;"  alt=Ryotaro Onoue/>
            <br />
            <sub style="font-size:14px"><b>Ryotaro Onoue</b></sub>
        </a>
    </td>
</tr>
</table>

<!-- Links -->

[yumemi_lints]: https://pub.dev/packages/yumemi_lints

[Contributor Guide]: https://github.com/yumemi-inc/flutter-yumemi-lints-tools/blob/main/docs/contributing/CONTRIBUTING.md
