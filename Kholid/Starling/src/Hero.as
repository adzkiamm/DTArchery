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
	 * @author dafiq
	 */
	public class Hero extends Sprite 
	{ 
		[Embed(source="../assets/DragonBone/hero/hero.json", mimeType="application/octet-stream")]
		public static const DBDataA: Class;

		[Embed(source="../assets/DragonBone/hero/texture.json", mimeType="application/octet-stream")]
		public static const TADataA1: Class;

		[Embed(source="../assets/DragonBone/hero/texture.png")]
		public static const TextureA1: Class;

		private var _isTouched:Boolean = false;
		private var _armatureDisplay: StarlingArmatureDisplay = null;
		private const _factory: StarlingFactory = new StarlingFactory();
		
		private var display:ArmatureRender;
		
		public function Hero()
		
		{
			super();
			display = new ArmatureRender(DBDataA, TADataA1, TextureA1, "Armature", "ahead");
			addChild (display);
		}
		
	}

}