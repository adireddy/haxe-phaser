package phaser.pixi.textures;

@:native("PIXI.Texture")
extern class Texture {
	
	/**
	 * @author Mat Groves <a href='http://matgroves.com/'>http://matgroves.com/</a> @Doormat23
	 */
	var TextureCache:Dynamic;
	
	/**
	 * A texture stores the information that represents an image or part of an image. It cannot be added
	 * to the display list directly. To do this use PIXI.Sprite. If no frame is provided then the whole image is used
	 */
	function new (BaseTexture:Dynamic, Rectangle:Dynamic);
	
	/**
	 * Does this Texture have any frame data assigned to it?
	 */
	var noFrame:Bool;
	
	/**
	 * The base texture that this texture uses.
	 */
	var baseTexture:Dynamic;
	
	/**
	 * The frame specifies the region of the base texture that this texture uses
	 */
	var frame:Dynamic;
	
	/**
	 * The trim point
	 */
	var trim:Dynamic;
	
	/**
	 * This will let the renderer know if the texture is valid. If its not then it cannot be rendered.
	 */
	var valid:Bool;
	
	/**
	 * The WebGL UV data cache.
	 */
	var uvs:Dynamic;
	
	/**
	 * The width of the Texture in pixels.
	 */
	var width:Float;
	
	/**
	 * The height of the Texture in pixels.
	 */
	var height:Float;
	
	/**
	 * This is the area of the BaseTexture image to actually copy to the Canvas / WebGL when rendering,
	 * irrespective of the actual frame size or placement (which can be influenced by trimmed texture atlases)
	 */
	var crop:Dynamic;
	
}
