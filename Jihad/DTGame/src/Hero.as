package 
{
	import render.ArmatureRender;
	import starling.display.Sprite;
	import dragonBones.objects.DragonBonesData;
	import dragonBones.starling.StarlingFactory;
	import dragonBones.starling.StarlingArmatureDisplay;
	import dragonBones.events.EventObject;
	
	/**
	 * ...
	 * @author jihad
	 */
	public class Hero extends Sprite 
	{
	
	[Embed(source="../assets/dragon bones/hero/hero.json", mimeType="application/octet-stream")]
	public static const DBDataA: Class;

	[Embed(source="../assets/dragon bones/hero/texture.json", mimeType="application/octet-stream")]
	public static const TADataA1: Class;

	[Embed(source="../assets/dragon bones/hero/texture.png")]
	public static const TextureA1: Class;

	private var display:ArmatureRender;
		public function Hero() 
		{
			super();
			display = new ArmatureRender(DBDataA, TADataA1, TextureA1, "Armature", "panah");
			
			this.addChild(display);
		}
		
	}

}