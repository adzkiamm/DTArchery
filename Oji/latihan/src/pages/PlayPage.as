package pages 
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author Shiva
	 */
	public class PlayPage extends Sprite 
	{
		//private var bg:Image;
		private var building:Image;
		private var buildingB:Image;
		private var tree:Image;
		private var treeB:Image;
		
		
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
			tree.x -= 2;
			if (tree.x <-tree.width) tree.x = 0;
			treeB.x -= 2;
			if (treeB.x < 0) treeB.x = treeB.width;
			
			building.x -= 0.4;
			if (building.x <-building.width) building.x = 0;
			buildingB.x -= 0.4;
			if (buildingB.x < 0) buildingB.x = buildingB.width;
		}
		
		private function drawPage():void 
		{
			//bg = new Image(Assets.getTexture("Bglevel1"));
			//this.addChild(bg);
			//bg.x = 10;
			
			building = new Image(Assets.getTexture("Building"));
			building.y =-5;
			building.height = 640;
			addChild(building);
			
			buildingB = new Image(Assets.getTexture("Building"));
			buildingB.x = buildingB.width;
			buildingB.y =-5;
			buildingB.height = 640;
			addChild(buildingB);
			
			tree = new Image(Assets.getTexture("Tree"));
			treeB = new Image(Assets.getTexture("Tree"));
			treeB.x = treeB.width;
			addChild(tree);
			addChild(treeB);
			
			/*
			var tree2:Image = new Image(Assets.getTexture("Tree2"));
			tree2.y =-5;
			tree.height = 640;
			addChild(tree2);
			*/
		}
		
		
	}

}