package 
{
	import pages.Playpage;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author Ojan
	 */
	public class Game extends Sprite 
	{   
		private var playpage:Playpage;
		private var hero:Hero;
		
		public function Game() 
		{ 
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}	
		    private function onAddedToStage(e:Event):void
		{	
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			trace("starling framework initialized!");
			
			playpage = new Playpage();
			hero = new Hero();
			hero.x = - 200
			hero.y = -40
			hero.scaleX = 0.2;
			hero.scaleY = 0.2;
			hero.height = 20
			hero.width = 10
			
			this.addChild(playpage);
			this.addChild(hero);
			}
		
	}

}