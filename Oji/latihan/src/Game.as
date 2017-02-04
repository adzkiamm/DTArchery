package 
{
	import pages.PlayPage;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author zee
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
		
		private function onAddedToStage (e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			trace("selamat tidur");
			
			playPage = new PlayPage();
			hero = new Hero
			hero.x =-250;
			hero.y = 380;
			hero.scaleX = 0.5;
			hero.scaleY = 0.5;
			addChild(playPage);
			addChild(hero);
		}
	}

}