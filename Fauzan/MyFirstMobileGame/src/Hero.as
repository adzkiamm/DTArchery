package 
{
	import starling.display.Sprite;
	import dragonBones.objects.DragonBonesData;
    import dragonBones.starling.StarlingFactory;
    import dragonBones.starling.StarlingArmatureDisplay;
    import dragonBones.events.EventObject;

	/**
	 * ...
	 * @author ojay
	 */
	public class Hero extends Sprite 
	{
		[Embed(source = "../assets/AnimationBaseTest/AnimationBaseTest.json", mimeType = "application/octet-stream")]
	public static const DBDataA: Class;

	[Embed(source = "../assets/AnimationBaseTest/texture.json", mimeType = "application/octet-stream")]
	public static const TADataA1: Class;

	[Embed(source = "../assets/AnimationBaseTest/texture.png")]
	public static const TextureA1: Class;

	private var _isTouched:Boolean = false;
	private var _armatureDisplay: StarlingArmatureDisplay = null;
	private const _factory: StarlingFactory = new StarlingFactory();
		
		public function Hero() 
		{
			super();
			
		}
		
	}

}