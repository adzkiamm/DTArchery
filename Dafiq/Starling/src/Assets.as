package 
{
	import flash.display.Bitmap;
	import starling.textures.Texture;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author dafiq
	 */
	public class Assets 
	{
		[Embed(source = "../assets/bg/langit.png")]
		public static const Langit:Class;
		
		[Embed(source = "../assets/bg/gunung.png")]
		public static const Gunung:Class;
		
		[Embed(source = "../assets/bg/cemara.png")]
		public static const Cemara:Class;
		
		[Embed(source = "../assets/bg/gedung.png")]
		public static const Gedung:Class;
		
		[Embed(source = "../assets/bg/tanah.png")]
		public static const Tanah:Class;
		
		
		private static var gameTextures:Dictionary = new Dictionary();
		
		public static function getTexture(name:String):Texture {
			
			if (gameTextures[name] == undefined) {
				
				var bitmap:Bitmap = new Assets[name] ();
				
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures [name];
		}
		
	}

}