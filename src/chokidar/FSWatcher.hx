package chokidar;

import js.node.events.EventEmitter;

@:jsRequire('chokidar', 'FSWatcher') extern class FSWatcher extends EventEmitter<Dynamic> {
  /**
    Constructs a new FSWatcher instance with optional WatchOptions parameter.
  **/
  function new(?options: WatchOptions);

  var options: WatchOptions;

  /**
    Add files, directories, or glob patterns for tracking. Takes an array of strings or just one
    string.
  **/
  function add(paths: haxe.extern.EitherType<String, haxe.ds.ReadOnlyArray<String>>): Void;

  /**
    Stop watching files, directories, or glob patterns. Takes an array of strings or just one
    string.
  **/
  function unwatch(paths: haxe.extern.EitherType<String, haxe.ds.ReadOnlyArray<String>>): Void;

  /**
    Returns an object representing all the paths on the file system being watched by this
    `FSWatcher` instance. The object's keys are all the directories (using absolute paths unless
    the `cwd` option was used), and the values are arrays of the names of the items contained in
    each directory.
  **/
  function getWatched(): {};

  /**
    Removes all listeners from watched files.
  **/
  function close(): js.lib.Promise<Void>;

  /**
    Error occurred

    Exposes the native Node `fs.FSWatcher events`

    Fires when the initial scan is complete
  **/
  @:overload(function(event: String,
    listener: haxe.extern.EitherType<(eventName: String, path: String) -> Void,
      (eventName: String, path: String, stats: js.node.fs.Stats) -> Void>): FSWatcher {})
  @:overload(function(event: String, listener: (error: js.lib.Error) -> Void): FSWatcher {})
  @:overload(function(event: String,
    listener: (eventName: String, path: String, details: Dynamic) -> Void): FSWatcher {})
  @:overload(function(event: String, listener: () -> Void): FSWatcher {})
  @:overload(function(event: String, listener: (path: String) -> Void): FSWatcher {})
  @:overload(function(event: String, listener: (args: haxe.extern.Rest<Dynamic>) -> Void): FSWatcher {})
  function on(event: String,
    listener: haxe.extern.EitherType<(path: String) -> Void, (path: String, stats: js.node.fs.Stats) -> Void>): FSWatcher;

  function addListener(event: haxe.extern.EitherType<String, js.lib.Symbol>,
    listener: (args: haxe.extern.Rest<Dynamic>) -> Void): FSWatcher;
  function once(event: haxe.extern.EitherType<String, js.lib.Symbol>,
    listener: (args: haxe.extern.Rest<Dynamic>) -> Void): FSWatcher;
  function removeListener(event: haxe.extern.EitherType<String, js.lib.Symbol>,
    listener: (args: haxe.extern.Rest<Dynamic>) -> Void): FSWatcher;
  function off(event: haxe.extern.EitherType<String, js.lib.Symbol>,
    listener: (args: haxe.extern.Rest<Dynamic>) -> Void): FSWatcher;
  function removeAllListeners(?event: haxe.extern.EitherType<String, js.lib.Symbol>): FSWatcher;
  function setMaxListeners(n: Float): FSWatcher;
  function prependListener(event: haxe.extern.EitherType<String, js.lib.Symbol>,
    listener: (args: haxe.extern.Rest<Dynamic>) -> Void): FSWatcher;
  function prependOnceListener(event: haxe.extern.EitherType<String, js.lib.Symbol>,
    listener: (args: haxe.extern.Rest<Dynamic>) -> Void): FSWatcher;
  static var prototype: FSWatcher;
}
