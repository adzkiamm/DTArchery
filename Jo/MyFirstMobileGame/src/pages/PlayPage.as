package pages 
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.text.TextField;
	import starling.utils.Color;
	import starling.text.TextFormat;
	import starling.text.TrueTypeCompositor;
	/**
	 * ...
	 * @author Joe
	 */
	public class PlayPage extends Sprite 
	{
		private var bg:Image;
		private var ground:Image;
		private var groundF:Image;
		private var home:Image;
		private var homeF:Image;
		private var tree:Image;
		private var treeF:Image;
		private var sky:Image;
		private var skyF:Image;
		private var gedung:Image;
		private var gedungF:Image;
		
		private const OFFSET:Number = 20;
		
		public function PlayPage() 
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			drawPage();
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
		}
		
		private function onEnterFrame(e:Event):void 
		{
			home.x -= 2;
			if (home.x < -home.width+OFFSET) home.x = 0;
			homeF.x -= 2;
			if (homeF.x < 0) homeF.x = homeF.width-OFFSET;
			
			tree.x -= 0.5;
			if (tree.x < -tree.width+OFFSET) tree.x = 0;
			treeF.x -= 0.5;
			if (treeF.x < 0) treeF.x = treeF.width-OFFSET;
			
			ground.x -= 2;
			if (ground.x < -ground.width+OFFSET) ground.x = 0;
			groundF.x -= 2;
			if (groundF.x < 0) groundF.x = groundF.width-OFFSET;
			
			sky.x -= 2;
			if (sky.x < -sky.width+OFFSET) sky.x = 0;
			skyF.x -= 2;
			if (skyF.x < 0) skyF.x = skyF.width-OFFSET;
			
			gedung.x -= 2;
			if (gedung.x < -gedung.width+OFFSET) gedung.x = 0;
			gedungF.x -= 2;
			if (gedungF.x < 0) gedungF.x = gedungF.width-OFFSET;
			
			
			
		}
		
		private function drawPage():void 
		{
			bg = new Image(Assets.getTexture("Bglevel1"));
			bg.x = 10;
			//this.addChild(bg);
			
			ground = new Image(Assets.getTexture("Ground"));
			groundF = new Image(Assets.getTexture("Ground"));
			ground.y = -25;
			groundF.y = -25;
			
			home = new Image(Assets.getTexture("Home"));
			homeF = new Image(Assets.getTexture("Home"));
			home.y = -20;
			homeF.y = -20;
			
			
			
			tree = new Image(Assets.getTexture("Tree"));
			treeF = new Image(Assets.getTexture("Tree"));
			tree.y =-100;
			tree.height = 640;
			treeF.y =-100;
			treeF.height = 640;
			
			
			gedung = new Image(Assets.getTexture("Gedung"));
			gedungF = new Image(Assets.getTexture("Gedung"));
			gedung.y = 40;
			gedungF.y = 40;
			
			sky = new Image(Assets.getTexture("Sky"));
			skyF = new Image(Assets.getTexture("Sky"));
			//sky.y = -180;
			//skyF.width = ;
			
			
			
			
			
			
			addChild(sky);
			addChild(skyF);
			addChild(gedung);
			addChild(gedungF);
			addChild(tree);
			addChild(treeF);
			addChild(homeF);
			addChild(home);
			addChild(ground);
			addChild(groundF);
			
			
		}
		
	}

}