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
		private var hero:Hero;
		
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
			hero = new Hero();
			hero.x =-350
			hero.y =0
			//hero.scaleX = 0.2;
			//hero.scaleY = 0.2;
			//hero.height = 20
			//hero.width = 10
			
			
			
			this.addChild(playPage);
			this.addChild(hero);
			trace("done add");
			
		}
		
	}

}