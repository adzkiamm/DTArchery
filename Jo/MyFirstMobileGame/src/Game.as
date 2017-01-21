package 
{
	import pages.PlayPage;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author Jonathan
	 */
	public class Game extends Sprite 
	{
		private var playPage:PlayPage;
		private var hero:Hero
		
		public function Game() 
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		private function onAddedToStage(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			trace("Starling Framework initialized!");
			
			playPage = new PlayPage();
			hero	 = new Hero();
			
			this.addChild(playPage);
			this.addChild(hero);
		}
	}

}