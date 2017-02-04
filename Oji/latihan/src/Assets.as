package 
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	import starling.textures.Texture;
	/**
	 * ...
	 * @author zee
	 */
	public class Assets 
	{
		
		//[Embed(source="../assets/bg/images.jpg")]
		//public static const Bglevel1:Class;
		
		[Embed(source = "../assets/bg/paralax tree.png")]
		public static const Tree:Class;
		
		[Embed(source = "../assets/bg/paralax tree2.png")]
		public static const Tree2:Class;
		
		[Embed(source="../assets/bg/paralax building.png")]
		public static const Building:Class;
		
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