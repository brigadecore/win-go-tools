# Brigade Windows Go Tools Image
[![slack](https://img.shields.io/badge/slack-brigade-brightgreen.svg?logo=slack)](https://kubernetes.slack.com/messages/C87MF1RFD)

This project provides a curated set of tools to facilitate building Go-based
components of [Brigade](https://github.com/brigadecore/brigade) (even those
requiring CGO) for _Windows_ containers. Currently, that amounts to the standard
Go toolchain, [MinGW](https://www.mingw-w64.org), and `cmake`, all installed via
[MSYS2](https://www.msys2.org/), which provides a Linux-like environment that is
nevertheless oriented toward building native Windows executables.

> ⚠️&nbsp;&nbsp;This project provides a distinctly different set of tools than
> the [Brigade Go Tools Image](https://github.com/brigadecore/go-tools), which
> is the real workhorse image that we utilize for executing tests, linting code,
> and more. The intent behind this project is _not_ to establish parity with
> that image, but merely to address gaps that make the official
> `golang:<version>-windowsservercore-1809` image non-viable for compiling and
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
