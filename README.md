# Brigade Windows Go Tools Image
[![slack](https://img.shields.io/badge/slack-brigade-brightgreen.svg?logo=slack)](https://kubernetes.slack.com/messages/C87MF1RFD)

This project provides a curated set of tools to facilitate building
[Brigade](https://github.com/brigadecore/brigade) components for _Windows_
containers. Currently, that amounts to the base
`golang:<version>-windowsservercore-1809`, plus `cmake` and
[MinGW](https://www.mingw-w64.org/installed) installed via
[Chocolately](https://chocolatey.org/).

> ⚠️&nbsp;&nbsp;This project provides a distinctly different set of tools than
> the [Brigade Go Tools Image](https://github.com/brigadecore/go-tools), which
> is the real workhorse image that we utilize for executing tests, linting code,
> and more. The intent behind this project is _not_ to establish parity, but
> merely to close gaps that make the base
> `golang:<version>-windowsservercore-1809` minimally viable for compiling and
> linking Go binaries that utilize CGO.

## Contributing

The Brigade project accepts contributions via GitHub pull requests. The
[Contributing](CONTRIBUTING.md) document outlines the process to help get your
contribution accepted.

## Support & Feedback

We have a slack channel!
[Kubernetes/#brigade](https://kubernetes.slack.com/messages/C87MF1RFD) Feel free
to join for any support questions or feedback, we are happy to help. To report
an issue or to request a feature open an issue
[here](https://github.com/brigadecore/win-go-tools/issues).

## Code of Conduct

Participation in the Brigade project is governed by the
[CNCF Code of Conduct](https://github.com/cncf/foundation/blob/master/code-of-conduct.md).
