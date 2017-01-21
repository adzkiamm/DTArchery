package pages 
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author kholid
	 */
	public class Playpage extends Sprite 
	{
		private var bg:Image;
		
		public function Playpage() 
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			drawPage()
			
		}
		
		private function drawPage():void 
		{
			bg = new Image(Assets.getTexture("BgLevel1"));
			this.addChild(bg);
			bg.x = 50;
			bg.y = 50;
			
		}
		
	}

}