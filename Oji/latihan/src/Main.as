package
{
	
	import flash.desktop.NativeApplication;
	import flash.events.Event;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import net.hires.debug.Stats;
	import starling.core.Starling;
	/**
	 * ...
	 * @author zee
	 */
	
	 [SWF(FrameRate = "60", width = "800" , height = "600" , backgroundcolour = "0x333399")]
	public class Main extends Sprite 
	{
		private var stat:Stats;
		private var mystarling:Starling;
	
		public function Main() 
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.addEventListener(Event.DEACTIVATE, deactivate);
			
			// touch or gesture?
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
			
			// Entry point
			// New to AIR? Please read *carefully* the readme.txt files!
			trace ("basmalah");
			
			stat = new Stats;
			addChild (stat);
			
			mystarling = new Starling (Game , stage );
			mystarling.antiAliasing = 1;
			mystarling.start();
		}
		
		private function deactivate(e:Event):void 
		{
			// make sure the app behaves well (or exits) when in background
			//NativeApplication.nativeApplication.exit();
		}
		
	}
	
}