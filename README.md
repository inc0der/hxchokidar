# Haxe Externs for chokidar

Use [chokidar](https://github.com/paulmillr/chokidar) a neat wrapper around Node.js fs.watch / fs.watchFile / FSEvents in a type safe manner and with the power of Haxe 💪.

## Dependencies
- [hxnodejs](https://github.com/HaxeFoundation/hxnodejs)

## Installation

With lix:
```
lix install gh:inc0der/hxchokidar
```

## Example

```js
import chokidar.Chokidar;

class Main {
  public static var watcher = Chokidar.watch('./src.', {
    ignoreInitial: true,
    disableGlobbing: true
  });

  public static function logOnFileChange() {
    watcher.on('change', (path) -> {
      trace(path);
    });
  }
}
```