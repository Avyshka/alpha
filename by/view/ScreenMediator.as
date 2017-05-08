package by.view
{
	import org.robotlegs.mvcs.Mediator;
	import by.controller.BottomBarEvent;

	public class ScreenMediator extends Mediator
	{
		[Inject]
		public var view:ScreenView;
		
		public function ScreenMediator()
		{
			// constructor code
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, BottomBarEvent.PLAY, onPlayHandler);
			eventMap.mapListener(eventDispatcher, BottomBarEvent.STOP, onStopHandler);
		}
		
		protected function onPlayHandler(evt:BottomBarEvent):void
		{
			trace("play screen");
		}
		
		protected function onStopHandler(evt:BottomBarEvent):void
		{
			trace("stop screen");
		}
	}

}