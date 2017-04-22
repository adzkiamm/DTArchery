package 
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	import starling.textures.Texture;
	/**
	 * ...
	 * @author jihad
	 */
	public class Assets 
	{
		
		//[Embed(source = "../assets/bg/level1.jpg")]
		//public static const BgLevel1:Class;
		
		[Embed(source = "../assets/bg/pohon.png")]
		public static const Pohon:Class;
		
		[Embed(source = "../assets/bg/tanah.png")]
		public static const Tanah:Class;
		
		[Embed(source = "../assets/bg/matahari.png")]
		public static const Matahari:Class;
		
		[Embed(source="../assets/bg/awan.png")]
		public static const Awan:Class;
		
		[Embed(source = "../assets/bg/mount.png")]
		public static const Mount:Class;
		
		[Embed(source = "../assets/bg/town.png")]
		public static const Town:Class;
		
		private static var gameTextures:Dictionary = new Dictionary();
		
		public static function getTexture(name:String):Texture {
			if (gameTextures[name] == undefined) {
				var bitmap:Bitmap = new Assets[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
		}
		
		
	}

}