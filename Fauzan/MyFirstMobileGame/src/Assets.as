package 
{
	
	import flash.display.Bitmap;
	import starling.textures.Texture;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author ojay
	 */
	public class Assets 
	{
		[Embed(source="../assets/bg/level1.jpg")]
		public static const BgLevel1:Class;
		
		private static var gameTextures:Dictionary = new Dictionary();
		
		public static function getTexture(name: String):Texture 
		{
			if (gameTextures[name] == undefined){ 
				var bitmap:Bitmap = new Assets[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
			
			
		}
	
		
	}

}