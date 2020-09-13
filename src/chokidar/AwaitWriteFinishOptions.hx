package chokidar;

typedef AwaitWriteFinishOptions = {
  /**
    Amount of time in milliseconds for a file size to remain constant before emitting its event.
  **/
  @:optional
  var stabilityThreshold: Float;

  /**
    File size polling interval.
  **/
  @:optional
  var pollInterval: Float;
};
