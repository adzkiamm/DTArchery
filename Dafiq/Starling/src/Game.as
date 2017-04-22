package 
{
	
	import com.greensock.TweenMax;
	import flash.ui.Keyboard;
	import pages.PlayPage;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
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
		
		private function onteken(e:TouchEvent):void 
		{
			trace("onteken");
			
			var touch:Touch = e.getTouch(this);
			trace (touch);
			if (touch == null){
				return;
			}
			
			if (touch.phase == TouchPhase.BEGAN) {
				hero.action("memanah");
			} else if (touch.phase == TouchPhase.ENDED){
				hero.action ("Jalan");
			}
			
		}
		
		private function onAddedToStage (e:starling.events.Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			trace("WELCOME TO MY WAY");
			
			playPage = new PlayPage();
			hero = new Hero();
			hero.x = -100
			hero.y = 325
			hero.scaleX = 0.3;
			hero.scaleY = 0.3;
			//hero.height = 20
			//hero.width = 10
			this.addChild(playPage);
			this.addChild(hero);
			
			// event listener
			this.addEventListener ( TouchEvent.TOUCH, onteken);
			stage.addEventListener (KeyboardEvent.KEY_DOWN, onpencet); 
			
		}
		
		private function onpencet(e:KeyboardEvent):void 
		{ 
			trace("lompat");
			if(e.keyCode==Keyboard.SPACE){
				hero.action("lompat");
				TweenMax.to (hero , 0.4 , {y:"-50" , yoyo:true , repeat:1 , onComplete:lompatselesai});
			}
			
		}
		
		private function lompatselesai():void 
		{
			hero.action ("Jalan");
		}
		
	}

}