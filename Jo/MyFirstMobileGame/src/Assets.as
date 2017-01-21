package 
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	import starling.textures.Texture;
	/**
	 * ...
	 * @author Joe
	 */
	public class Assets 
	{
		[Embed(source = "../assets/bg/level1.png")]
		public static const Bglevel1:Class;
		
		[Embed(source = "../assets/bg/paralax ground.png")]
		public static const Ground:Class;
		
		[Embed(source = "../assets/bg/paralax home.png")]
		public static const Home:Class;
		
		[Embed(source = "../assets/bg/paralax tree.png")]
		public static const Tree:Class;
		
		[Embed(source = "../assets/bg/paralax sky.png")]
		public static const Sky:Class;
		
		[Embed(source = "../assets/bg/gedung.png")]
		public static const Gedung:Class;
		

		private static var gameTextures:Dictionary = new Dictionary();
		
		public static function getTexture(name:String):Texture{
			if (gameTextures[name] == undefined) {
				var bitmap:Bitmap = new Assets[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
		}
		
	}

}