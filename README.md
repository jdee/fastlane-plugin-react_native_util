# react_native_util plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-react_native_util)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-react_native_util`, add it to your project by running:

```bash
fastlane add_plugin react_native_util
```

## About react_native_util

### react_pod action

Converts a React Native Xcode project to use the React pod from node_modules
instead of the projects in the Libraries group. This makes it easier to manage
native dependencies while preserving compatibility with `react-native link`.
The command looks for your app's package.json in the current directory and
expects your Xcode project to be located under the ios subdirectory and have
the name specified for your app in package.json. If a Podfile is found in the
ios subdirectory, the conversion will fail.

The React.xcodeproj in the Libraries group of a project created by
`react-native init` automatically starts the Metro packager via a Run Script
build phase. When the react_pod command removes the Libraries group from your
app project, it adds an equivalent build phase to your app project so that the
packager will automatically be started when necessary by Xcode.

Use the `update` option to update the packager script after
updating React Native, in case the packager script on the React.xcodeproj changes
after it's removed from your project.

### Options

|option|description|type|default|env. var.|
|------|-----------|----|-------|---------|
|chdir|Specify the path to the app (location of package.json)|String|.||
|update|Update a previously converted project|Boolean|false||
|repo_update|Don't update the local podspec repo|Boolean|true|REACT_NATIVE_UTIL_REPO_UPDATE|

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

Convert examples/UnconvertedApp:
```bash
fastlane convert_app
```

Update examples/ConvertedApp:
```bash
fastlane update_app
```

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
