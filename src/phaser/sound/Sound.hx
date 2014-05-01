package phaser.sound;

@:native("Phaser.Sound")
extern class Sound {
	
	/**
	 * The Sound class constructor.
	 */
	function new (game:phaser.core.Game, key:String, ?volume:Float = 1, ?loop:Bool = false);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Name of the sound.
	 */
	var name:String;
	
	/**
	 * Asset key for the sound.
	 */
	var key:String;
	
	/**
	 * Whether or not the sound or current sound marker will loop.
	 */
	var loop:Bool;
	
	/**
	 * The sound or sound marker volume. A value between 0 (silence) and 1 (full volume).
	 */
	var volume:Float;
	
	/**
	 * The sound markers.
	 */
	var markers:Dynamic;
	
	/**
	 * Reference to the AudioContext instance.
	 */
	var context:Dynamic;
	
	/**
	 * Boolean indicating whether the sound should start automatically.
	 */
	var autoplay:Bool;
	
	/**
	 * The total duration of the sound in seconds.
	 */
	var totalDuration:Float;
	
	/**
	 * The time the Sound starts at (typically 0 unless starting from a marker)
	 */
	var startTime:Float;
	
	/**
	 * The current time the sound is at.
	 */
	var currentTime:Float;
	
	/**
	 * The duration of the current sound marker in seconds.
	 */
	var duration:Float;
	
	/**
	 * The duration of the current sound marker in ms.
	 */
	var durationMS:Float;
	
	/**
	 * The position of the current sound marker.
	 */
	var position:Float;
	
	/**
	 * The time the sound stopped.
	 */
	var stopTime:Float;
	
	/**
	 * true if the sound is paused, otherwise false.
	 */
	var paused:Bool;
	
	/**
	 * The position the sound had reached when it was paused.
	 */
	var pausedPosition:Float;
	
	/**
	 * The game time at which the sound was paused.
	 */
	var pausedTime:Float;
	
	/**
	 * true if the sound is currently playing, otherwise false.
	 */
	var isPlaying:Bool;
	
	/**
	 * The string ID of the currently playing marker, if any.
	 */
	var currentMarker:String;
	
	/**
	 * true if the sound file is pending playback
	 */
	var pendingPlayback(default, null):Bool;
	
	/**
	 * true if this sound is being played with Web Audio.
	 */
	var usingWebAudio(default, null):Bool;
	
	/**
	 * true if the sound is being played via the Audio tag.
	 */
	var usingAudioTag:Bool;
	
	/**
	 * If defined this Sound won't connect to the SoundManager master gain node, but will instead connect to externalNode.input.
	 */
	var externalNode:Dynamic;
	
	/**
	 * The master gain node in a Web Audio system.
	 */
	var masterGainNode:Dynamic;
	
	/**
	 * The gain node in a Web Audio system.
	 */
	var gainNode:Dynamic;
	
	/**
	 * The onDecoded event is dispatched when the sound has finished decoding (typically for mp3 files)
	 */
	var onDecoded:phaser.core.Signal;
	
	/**
	 * The onPlay event is dispatched each time this sound is played.
	 */
	var onPlay:phaser.core.Signal;
	
	/**
	 * The onPause event is dispatched when this sound is paused.
	 */
	var onPause:phaser.core.Signal;
	
	/**
	 * The onResume event is dispatched when this sound is resumed from a paused state.
	 */
	var onResume:phaser.core.Signal;
	
	/**
	 * The onLoop event is dispatched when this sound loops during playback.
	 */
	var onLoop:phaser.core.Signal;
	
	/**
	 * The onStop event is dispatched when this sound stops playback.
	 */
	var onStop:phaser.core.Signal;
	
	/**
	 * The onMouse event is dispatched when this sound is muted.
	 */
	var onMute:phaser.core.Signal;
	
	/**
	 * The onMarkerComplete event is dispatched when a marker within this sound completes playback.
	 */
	var onMarkerComplete:phaser.core.Signal;
	
	/**
	 * The global audio volume. A value between 0 (silence) and 1 (full volume).
	 */
	var _volume:Float;
	
	/**
	 * Decoded data buffer / Audio tag.
	 */
	var _buffer:Dynamic;
	
	/**
	 * Boolean indicating whether the sound is muted or not.
	 */
	var _muted:Bool;
	
	/**
	 * Internal marker var.
	 */
	var _tempMarker:Float;
	
	/**
	 * Internal marker var.
	 */
	var _tempPosition:Float;
	
	/**
	 * Internal marker var.
	 */
	var _tempVolume:Float;
	
	/**
	 * Internal marker var.
	 */
	var _tempLoop:Bool;
	
	/**
	 * Was this sound paused via code or a game event?
	 */
	var _paused:Bool;
	
	/**
	 * Called automatically when this sound is unlocked.
	 */
	function soundHasUnlocked (key:String):Void;
	
	/**
	 * Adds a marker into the current Sound. A marker is represented by a unique key and a start time and duration.
	 * This allows you to bundle multiple sounds together into a single audio file and use markers to jump between them for playback.
	 */
	function addMarker (name:String, start:Float, duration:Float, ?volume:Float = 1, ?loop:Bool = false):Void;
	
	/**
	 * Removes a marker from the sound.
	 */
	function removeMarker (name:String):Void;
	
	/**
	 * Called automatically by Phaser.SoundManager.
	 */
	function update ():Void;
	
	/**
	 * Play this sound, or a marked section of it.
	 */
	function play (?marker:String = '', ?position:Float = 0, ?volume:Float = 1, ?loop:Bool = false, ?forceRestart:Bool = true):phaser.sound.Sound;
	
	/**
	 * Restart the sound, or a marked section of it.
	 */
	function restart (?marker:String = '', ?position:Float = 0, ?volume:Float = 1, ?loop:Bool = false):Void;
	
	/**
	 * Pauses the sound.
	 */
	function pause ():Void;
	
	/**
	 * Resumes the sound.
	 */
	function resume ():Void;
	
	/**
	 * Stop playing this sound.
	 */
	function stop ():Void;
	
	/**
	 * Destroys this sound and all associated events and removes it from the SoundManager.
	 */
	function destroy (?remove:Bool = true):Void;
	
	/**
	 * @name Phaser.Sound#isDecoding
	 */
	var isDecoding(default, null):Bool;
	
	/**
	 * @name Phaser.Sound#isDecoded
	 */
	var isDecoded(default, null):Bool;
	
	/**
	 * @name Phaser.Sound#mute
	 */
	var mute:Bool;
	
}
