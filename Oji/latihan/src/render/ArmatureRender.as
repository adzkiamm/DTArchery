package render 
{
	/**
	 * ...
	 * @author zain
	 */
	import dragonBones.events.EventObject;
	import dragonBones.objects.DragonBonesData;
	import starling.display.Sprite;
	import starling.events.Event;
	import dragonBones.starling.StarlingFactory;
	import dragonBones.starling.StarlingArmatureDisplay;

	public class ArmatureRender extends Sprite
	{
		public static var instance: ArmatureRender = null;
		
		public var dragonBonesData: DragonBonesData = null;
		
		private var _armatureIndex: uint = 0;
		private var _animationIndex: uint = 0;
		private var _armatureDisplay: StarlingArmatureDisplay = null;
		
		private var DBDataA:Class;
		private var TADataA1:Class;
		private var TextureA1:Class;
		private var initialArmature:String;
		private var initialAnimation:String;
		
		public function ArmatureRender(DBDataA:Class, TADataA1:Class, TextureA1:Class, initialArmature:String, initialAnimation:String)
		{
			this.initialAnimation = initialAnimation;
			this.initialArmature = initialArmature;
			this.TextureA1 = TextureA1;
			this.TADataA1 = TADataA1;
			this.DBDataA = DBDataA;
			
			instance = this;
			
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, _addToStageHandler);
		}
		
		public function get armatureDisplay(): StarlingArmatureDisplay
		{
			return _armatureDisplay;
		}
		
		private function _addToStageHandler(event: starling.events.Event): void
		{
			// Parse data.
			trace("parse");
			dragonBonesData = StarlingFactory.factory.parseDragonBonesData(
				JSON.parse(new DBDataA())
			);
			StarlingFactory.factory.parseTextureAtlasData(
				JSON.parse(new TADataA1()),
				new TextureA1()
			);
			
			if (dragonBonesData)
			{
				// Add armature.
				changeArmature(initialArmature);
				changeAnimation(initialAnimation);
			}
			else
			{
				throw new Error();
			}
		}
		
		/** 
		 * Change armature.
		 */
		public function changeArmature(armatureName:String = ""): void
		{
			const armatureNames: Vector.<String> = dragonBonesData.armatureNames;
			if (armatureNames.length == 0)
			{
				return;
			}
			
			// Remove prev armature.
			if (_armatureDisplay)
			{
				// Remove listeners.
				_armatureDisplay.removeEventListener(EventObject.START, _animationHandler);
				_armatureDisplay.removeEventListener(EventObject.LOOP_COMPLETE, _animationHandler);
				_armatureDisplay.removeEventListener(EventObject.COMPLETE, _animationHandler);
				_armatureDisplay.removeEventListener(EventObject.FRAME_EVENT, _frameEventHandler);
				
				_armatureDisplay.dispose();
				this.removeChild(_armatureDisplay);
			}
			
			// Get next armature name.
			_animationIndex = 0;
			_armatureIndex++;
			if (_armatureIndex >= armatureNames.length)
			{
				_armatureIndex = 0;
			}
			
			if (armatureName == "") {
				armatureName = armatureNames[_armatureIndex];
			}
			
			// Build armature display. (buildArmatureDisplay will advanceTime animation by Armature Display)
			_armatureDisplay = StarlingFactory.factory.buildArmatureDisplay(armatureName);
			// _armatureDisplay.armature.cacheFrameRate = 24; // Cache animation.
			
			// Add animation listener.
			_armatureDisplay.addEventListener(EventObject.START, _animationHandler);
			_armatureDisplay.addEventListener(EventObject.LOOP_COMPLETE, _animationHandler);
			_armatureDisplay.addEventListener(EventObject.COMPLETE, _animationHandler);
			// Add frame event listener.
			_armatureDisplay.addEventListener(EventObject.FRAME_EVENT, _frameEventHandler);
			
			// Add armature display.
			_armatureDisplay.x = this.stage.stageWidth * 0.5 + 200;
			_armatureDisplay.y = this.stage.stageHeight * 0.5 + 100;
			this.addChild(_armatureDisplay);
		}
		
		/** 
		 * Change armature animation.
		 */
		public function changeAnimation(animationName:String=""): void
		{
			trace("changeAnimation: " + animationName);
			if (!_armatureDisplay) 
			{
				return;
			}
			
			const animationNames: Vector.<String> = _armatureDisplay.animation.animationNames;
			if (animationNames.length == 0)
			{
				return;
			}
			
			// Get next animation name.
			_animationIndex++;
			if (_animationIndex >= animationNames.length)
			{
				_animationIndex = 0;
			}
			
			if(animationName=="") animationName = animationNames[_animationIndex];
			
			// Play animation.
			_armatureDisplay.animation.play(animationName);
		}
		
		/** 
		 * Animation listener.
		 */
		private function _animationHandler(event:starling.events.Event): void 
		{
			const eventObject:EventObject = event.data as EventObject;
			trace(event.type, eventObject.animationState.name);
		}
		
		/** 
		 * Frame event listener. (If animation has frame event)
		 */
		private function _frameEventHandler(event: starling.events.Event): void 
		{
			const eventObject:EventObject = event.data as EventObject;
			trace(event.type, eventObject.animationState.name, eventObject.name);
		}
	}

}