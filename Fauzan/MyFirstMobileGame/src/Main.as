package
{
	import flash.display.*;
	import flash.events.*;
	import flash.ui.*;
	import net.hires.debug.*;
	import starling.core.*;
	
	/**
	 * ...
	 * @author Fauzan
	 */
	[SWF(frameRate="60",width="800",height="600",backgroundColor="0x333333")]
	public class Main extends Sprite 
	{
	    private var stat:Stats;
		private var myStarling:Starling;
		
		public function Main()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.addEventListener(Event.DEACTIVATE, deactivate);
			
			// touch or gesture?
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
			
			// Entry point
			// New to AIR? Please read *carefully* the readme.txt files!
			trace("bismillah"); 
		    
		
		    stat = new Stats();
		    addChild(stat);
			
			
			myStarling = new Starling(Game, stage);
		    myStarling.antiAliasing = 1;
			myStarling.start();
		}
		
		private function deactivate(e:Event):void 
		{
			// make sure the app behaves well (or exits) when in background
			//NativeApplication.nativeApplication.exit();
		}
		
	}
	
}