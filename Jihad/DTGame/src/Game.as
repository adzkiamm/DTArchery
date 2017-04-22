package 
{
	import pages.PlayPage;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author jihad
	 */
	public class Game extends Sprite
	{
		private var playPage:PlayPage;
		private var hero:Hero;
		
		public function Game() 
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		private function onAddedToStage(e:Event):void{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			trace("starling framework initialized!");
			
			playPage = new PlayPage();
			hero = new Hero;
			hero.x = -100
			hero.y = 370
			hero.scaleX = 0.4;
			hero.scaleY = 0.4;
			
			
			this.addChild(playPage);	
			this.addChild(hero);
		}
	}

}