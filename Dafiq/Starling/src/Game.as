package 
{
	
	import com.greensock.TweenMax;
	import feathers.controls.PickerList;
	import feathers.controls.renderers.DefaultListItemRenderer;
	import feathers.controls.renderers.IListItemRenderer;
	import feathers.data.ListCollection;
	import flash.ui.Keyboard;
	import pages.PlayPage;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
	import feathers.controls.Button;
	import feathers.controls.TextCallout;
	import feathers.themes.MetalWorksMobileTheme;
	
	
	/**
	 * ...
	 * @author dafiq
	 */
	public class Game extends Sprite 
	{
		private var playPage:PlayPage;
		private var hero:Hero;
		private var button:Button;
		
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
			
			new MetalWorksMobileTheme();
			
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
			//this.addEventListener ( TouchEvent.TOUCH, onteken);
			stage.addEventListener (KeyboardEvent.KEY_DOWN, onpencet); 
			
			/* CONTROL */
			
			this.button = new Button();
			this.button.label = "Panah";
			this.addChild (button);
			
			this.button.addEventListener( Event.TRIGGERED, ontombol)
			
			this.button.validate();
			this.button.x = (this.stage.stageWidth - this.button.width) / 2 ;
			this.button.y = (this.stage.stageHeight - this.button.height) / 2 ; 
			
			// test other feather ui
			var list:PickerList = new PickerList();
			this.addChild( list );
			
			var groceryList:ListCollection = new ListCollection(
			[
				{ text: "panah" },
				{ text: "bintang" },
				{ text: "pedang" },
				{ text: "perisai" },
			]);
			list.dataProvider = groceryList;
			
			list.itemRendererFactory = function():IListItemRenderer
			{
				var itemRenderer:DefaultListItemRenderer = new DefaultListItemRenderer();
				itemRenderer.labelField = "text";
				return itemRenderer;
			}
		}
		
		private function ontombol(e:Event):void 
		{ 
			TextCallout.show( "Welcome in my game", this.button );
			hero.action("memanah");
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