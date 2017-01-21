package 
{
	import pages.PlayPage;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author sendy ambon
	 */
	public class Game extends Sprite 
	{
		private var playPage:PlayPage;
		
		public function Game() 
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}	
		    private function onAddedToStage(e:Event):void
		{	
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			trace("starling framework initialized!");
			
			playPage = new PlayPage();
			this.addChild(playPage);
			trace("added to stage");
		}
		
	}

}