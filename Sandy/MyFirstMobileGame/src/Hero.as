package 
{
	import render.ArmatureRender;
	import starling.display.Sprite;
	
	/**
	 * ...
	 * @author sendy ambon
	 */
	public class Hero extends Sprite 
	{
	    [Embed(source="../assets/dragonbones/hero/hero.json", mimeType="application/octet-stream")]
		public static const DBDataA: Class;
		
		[Embed(source="../assets/dragonbones/hero/texture.json", mimeType="application/octet-stream")]
		public static const TADataA1: Class;
		
		[Embed(source="../assets/dragonbones/hero/texture.png")]
		public static const TextureA1: Class;
		
		private var display:ArmatureRender;
		
		public function Hero() 
		{
			super();
			display = new ArmatureRender(DBDataA, TADataA1, TextureA1, "mecha_1502b", "walk");
			
			this.addChild(display);
			
		}
		
	}

}