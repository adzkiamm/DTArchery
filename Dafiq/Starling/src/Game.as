package 
{
	
	import pages.PlayPage;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author dafiq
	 */
	public class Game extends Sprite 
	{
		private var playPage:PlayPage;
		
		public function Game() 
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE , onAddedToStage);
			
		}
		
		private function onAddedToStage (e:starling.events.Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			trace("WELCOME TO MY WAY");
			
			playPage = new PlayPage();
			this.addChild(playPage);
			
		}
		
	}

}