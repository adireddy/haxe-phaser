package phaser.gameobjects;

@:native("Phaser.Graphics")
extern class Graphics extends phaser.pixi.primitives.Graphics {
	
	/**
	 * Creates a new Graphics object.
	 */
	function new (game:phaser.core.Game, x:Float, y:Float);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * If exists = false then the Text isn't updated by the core game loop.
	 */
	var exists:Bool;
	
	/**
	 * The user defined name given to this object.
	 */
	var name:String;
	
	/**
	 * The const type of this object.
	 */
	var type:Float;
	
	/**
	 * The z-depth value of this object within its Group (remember the World is a Group as well). No two objects in a Group can have the same z value.
	 */
	var z:Float;
	
	/**
	 * The world coordinates of this Sprite. This differs from the x/y coordinates which are relative to the Sprites container.
	 */
	var world:Dynamic;
	
	/**
	 * If this object is fixedToCamera then this stores the x/y offset that its drawn at, from the top-left of the camera view.
	 */
	var cameraOffset:Dynamic;
	
	/**
	 * A small internal cache:
	 * 0 = previous position.x
	 * 1 = previous position.y
	 * 2 = previous rotation
	 * 3 = renderID
	 * 4 = fresh? (0 = no, 1 = yes)
	 * 5 = outOfBoundsFired (0 = no, 1 = yes)
	 * 6 = exists (0 = no, 1 = yes)
	 * 7 = fixed to camera (0 = no, 1 = yes)
	 * 8 = destroy phase? (0 = no, 1 = yes)
	 */
	var cache:Array<Dynamic>;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Override and use this function in your own custom objects to handle any update requirements you may have.
	 */
	function update ():Void;
	
	/**
	 * Automatically called by World.postUpdate.
	 */
	function postUpdate ():Void;
	
	/**
	 * Destroy this Graphics instance.
	 */
	function destroy (?destroyChildren:Bool = true):Void;
	
	/**
	 * Draws a {Phaser.Polygon} or a {PIXI.Polygon} filled
	 */
	function drawPolygon ():Void;
	
	/**
	 * Draws a single {Phaser.Polygon} triangle from a {Phaser.Point} array
	 */
	function drawTriangle (points:Dynamic, ?cull:Bool = false):Void;
	
	/**
	 * Draws {Phaser.Polygon} triangles 
	 */
	@:overload(function (vertices:Dynamic, indices:Dynamic, ?cull:Bool = false):Void {})
	function drawTriangles (vertices:Dynamic, indices:Dynamic, ?cull:Bool = false):Void;
	
	/**
	 * Indicates the rotation of the Graphics, in degrees, from its original orientation. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation.
	 * Values outside this range are added to or subtracted from 360 to obtain a value within the range. For example, the statement player.angle = 450 is the same as player.angle = 90.
	 * If you wish to work in radians instead of degrees use the property Sprite.rotation instead.
	 */
	var angle:Float;
	
	/**
	 * An Graphics that is fixed to the camera uses its x/y coordinates as offsets from the top left of the camera. These are stored in Graphics.cameraOffset.
	 * Note that the cameraOffset values are in addition to any parent in the display list.
	 * So if this Graphics was in a Group that has x: 200, then this will be added to the cameraOffset.x
	 */
	var fixedToCamera:Bool;
	
	/**
	 * @name Phaser.Graphics#destroyPhase
	 */
	var destroyPhase:Bool;
}