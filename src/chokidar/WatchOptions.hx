package chokidar;

typedef WatchOptions = {
  /**
    Indicates whether the process should continue to run as long as files are being watched. If
    set to `false` when using `fsevents` to watch, no more events will be emitted after `ready`,
    even if the process continues to run.
  **/
  @:optional
  var persistent: Bool;

  /**
    ([anymatch](https://github.com/micromatch/anymatch)-compatible definition) Defines files/paths to
    be ignored. The whole relative or absolute path is tested, not just filename. If a function
    with two arguments is provided, it gets called twice per path - once with a single argument
    (the path), second time with two arguments (the path and the
    [`fs.Stats`](https://nodejs.org/api/fs.html#fs_class_fs_stats) object of that path).
  **/
  @:optional
  var ignored: Dynamic;

  /**
    If set to `false` then `add`/`addDir` events are also emitted for matching paths while
    instantiating the watching as chokidar discovers these file paths (before the `ready` event).
  **/
  @:optional
  var ignoreInitial: Bool;

  /**
    When `false`, only the symlinks themselves will be watched for changes instead of following
    the link references and bubbling events through the link's path.
  **/
  @:optional
  var followSymlinks: Bool;

  /**
    The base directory from which watch `paths` are to be derived. Paths emitted with events will
    be relative to this.
  **/
  @:optional
  var cwd: String;

  /**
    If set to true then the strings passed to .watch() and .add() are treated as literal path
    names, even if they look like globs. Default: false.
  **/
  @:optional
  var disableGlobbing: Bool;

  /**
    Whether to use fs.watchFile (backed by polling), or fs.watch. If polling leads to high CPU
    utilization, consider setting this to `false`. It is typically necessary to **set this to
    `true` to successfully watch files over a network**, and it may be necessary to successfully
    watch files in other non-standard situations. Setting to `true` explicitly on OS X overrides
    the `useFsEvents` default.
  **/
  @:optional
  var usePolling: Bool;

  /**
    Whether to use the `fsevents` watching interface if available. When set to `true` explicitly
    and `fsevents` is available this supercedes the `usePolling` setting. When set to `false` on
    OS X, `usePolling: true` becomes the default.
  **/
  @:optional
  var useFsEvents: Bool;

  /**
    If relying upon the [`fs.Stats`](https://nodejs.org/api/fs.html#fs_class_fs_stats) object that
    may get passed with `add`, `addDir`, and `change` events, set this to `true` to ensure it is
    provided even in cases where it wasn't already available from the underlying watch events.
  **/
  @:optional
  var alwaysStat: Bool;

  /**
    If set, limits how many levels of subdirectories will be traversed.
  **/
  @:optional
  var depth: Float;

  /**
    Interval of file system polling.
  **/
  @:optional
  var interval: Float;

  /**
    Interval of file system polling for binary files. ([see list of binary extensions](https://gi
    thub.com/sindresorhus/binary-extensions/blob/master/binary-extensions.json))
  **/
  @:optional
  var binaryInterval: Float;

  /**
    Indicates whether to watch files that don't have read permissions if possible. If watching
    fails due to `EPERM` or `EACCES` with this set to `true`, the errors will be suppressed
    silently.
  **/
  @:optional
  var ignorePermissionErrors: Bool;

  /**
    `true` if `useFsEvents` and `usePolling` are `false`). Automatically filters out artifacts
    that occur when using editors that use "atomic writes" instead of writing directly to the
    source file. If a file is re-added within 100 ms of being deleted, Chokidar emits a `change`
    event rather than `unlink` then `add`. If the default of 100 ms does not work well for you,
    you can override it by setting `atomic` to a custom value, in milliseconds.
  **/
  @:optional
  var atomic: haxe.ds.Either<Float, Bool>;

  /**
    can be set to an object in order to adjust timing params:
  **/
  @:optional
  var awaitWriteFinish: haxe.ds.Either<Bool, AwaitWriteFinishOptions>;
};
