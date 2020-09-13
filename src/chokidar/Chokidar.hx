package chokidar;

@:jsRequire('chokidar') extern class Chokidar {
  /**
    produces an instance of `FSWatcher`.
  **/
  static function watch(paths: haxe.extern.EitherType<String, haxe.ds.ReadOnlyArray<String>>,
    ?options: chokidar.WatchOptions): chokidar.FSWatcher;
}
