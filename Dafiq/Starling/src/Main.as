package
{
	import flash.desktop.NativeApplication;
	import flash.events.Event;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.geom.Rectangle;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import net.hires.debug.Stats;
	import starling.core.Starling;
	import starling.utils.RectangleUtil;
	import starling.utils.ScaleMode;
	
	/**
	 * ...
	 * @author dafiq
	 */
	
	 [SWF(frameRate = "60", width="800" , height="600" , backgroundcolour="0xff0000")]
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
			trace ("bismillah");
			
			stat = new Stats;
			addChild (stat);
			/*
			var viewPort:Rectangle = RectangleUtil.fit(
				new Rectangle(0, 0, 800, 600),
				new Rectangle(0, 0, stage.fullScreenWidth, stage.fullScreenHeight),
				ScaleMode.SHOW_ALL
			)
			
			Starling.handleLostContext = true;*/
			//myStarling = new Starling (Game , stage, viewPort );
			myStarling = new Starling (Game , stage);
			/*myStarling.stage.stageWidth = 800;
			myStarling.stage.stageHeight = 600;
			myStarling.enableErrorChecking = true;
			myStarling.showStats = true;*/
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