package pages 
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author jihad
	 */
	public class PlayPage extends Sprite 
	{
		
		
		private var matahari:Image;
		private var matahariB:Image;
		private var awan:Image;
		private var awanB:Image;
		private var pohon:Image;
		private var pohonB:Image;
		private var tanah:Image;
		private var tanahB:Image;
		
		public function PlayPage() 
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			
			
			
		}
		
		private function onAddedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			drawPage();
		}
		
		private function onEnterFrame(e:Event):void 
		{
			pohon.x -= 2;
			if (pohon.x < -stage.width) 
				pohon.width = 0;
				
				awan.x -= 2;
				if (awan.x < -stage.width) 
				awan.width = 0;
			//if (pohonB.x <= 0)
			//	pohonB.x = pohonB.width;
		}
		
		private function drawPage():void 
		{
			//bg = new Image(Assets.getTexture("BgLevel"));
			//this.addChild(bg);
			
			
			pohon = new Image (Assets.getTexture("Pohon"));
			addChild(pohon);
			
			tanah = new Image (Assets.getTexture("Tanah"));
			addChild(tanah);
			matahari = new Image (Assets.getTexture("Matahari"));
			addChild(matahari);
			awan = new Image (Assets.getTexture("Awan"));
			addChild(awan);
			
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
		}
		
	}

}