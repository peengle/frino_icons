# frino_icons

Flutter Frino icon library, based on Frino Icons created by Rafał Fuczyński and with the help of FlutterIcon.com

Check icon list on https://www.rafalfuczynski.com/frino/icons/

![Frino Example Image](https://raw.githubusercontent.com/clean/frino_icons/master/doc/frino.examples.jpg)

## Installing

Include `frino_icons` in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  frino_icons: ^1.0.1
```

If your IDE doesn't do it automatically, type:

`flutter packages get`


## Using

Import the package in your `dart` file and use `Icon` to get the actual icon widget:

```dart
import 'package:frino_icons/frino_icons.dart';
...
Icon _icon = Icon(FrinoIcons.code);
...
```

## Credits

- Rafał Fuczyński for creating this beautiful set of icons (https://www.rafalfuczynski.com/)
