package 
{
	import pages.Playpage;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author kholid
	 */
	public class Game extends Sprite 
	{
		private var playPage:Playpage;
		
		public function Game() 
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
		}
		private function onAddedToStage(e:Event):void
		
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			trace('fgfd');
			
			playPage = new Playpage();
			this.addChild(playPage);
		}
	}

}