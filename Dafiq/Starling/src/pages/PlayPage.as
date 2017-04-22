package pages 
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.text.TextField;
	import starling.textures.Texture;
	
	
	
	/**
	 * ...
	 * @author dafiq
	 */
	public class PlayPage extends Sprite 
	{ 
		private var bg:Image
		private var gunung:Image;
		private var gunungB:Image;
		private var cemara:Image;
		private var cemaraB:Image;
		private var gedung:Image;
		private var gedungB:Image;
		private var tanah:Image ;
		private var tanahB:Image ;
		private var langit:Image ;
		private var langitB:Image;
		
		
		
		
		public function PlayPage() 
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage) ;
			
		}
		
		private function onAddedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			drawPage()
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			
		}
		
		private function onEnterFrame(e:Event):void 
		{
			langit.x -= 0.5;
			langitB.x -= 0.5;
			if (langit.x < -langit.width) langit.x = 0;
			if (langitB.x < 0) langitB.x = langitB.width;
			
			gunung.x -= 1;
			gunungB.x -= 1;
			if (gunung.x < -gunung.width) gunung.x = 0;
			if (gunungB.x < 0) gunungB.x = gunungB.width;
			
			cemara.x -= 2;
			cemaraB.x -= 2;
			if (cemara.x < -cemara.width) cemara.x = 0;
			if (cemaraB.x < 0) cemaraB.x = cemaraB.width;
			
			gedung.x -= 3;
			gedungB.x -= 3;
			if (gedung.x < -gedung.width) gedung.x = 0;
			if (gedungB.x < 0) gedungB.x = gedungB.width;
			
			tanah.x -= 4;
			tanahB.x -= 4;
			if (tanah.x < -tanah.width) tanah.x = 0;
			if (tanahB.x < 0) tanahB.x = tanahB.width;
		}
		
		private function drawPage():void 
		{
			//bg = new Image(Assets.getTexture("BgLevel1"));
			//bg.x = 150;
			//bg.y = 50;
			//this.addChild(bg);
			
			langit = new Image (Assets.getTexture("Langit"));
			this.addChild(langit);
			langitB = new Image (Assets.getTexture("Langit"));
			this.addChild(langitB);
			
			gunung = new Image (Assets.getTexture("Gunung"));
			this.addChild(gunung);
			gunungB = new Image (Assets.getTexture("Gunung"));
			this.addChild(gunungB);
		
			
			cemara = new Image (Assets.getTexture("Cemara"));
			this.addChild(cemara);
			cemaraB = new Image (Assets.getTexture("Cemara"));
			this.addChild(cemaraB);
			
			gedung = new Image (Assets.getTexture("Gedung"));
			this.addChild(gedung);
			gedungB = new Image (Assets.getTexture("Gedung"));
			this.addChild(gedungB);
			
			tanah = new Image (Assets.getTexture("Tanah"));
			this.addChild(tanah);
			tanahB = new Image (Assets.getTexture("Tanah"));
			this.addChild(tanahB);
			
			
			
		}
		
	}

}