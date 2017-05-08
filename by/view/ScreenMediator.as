package by.view
{
	import org.robotlegs.mvcs.Mediator;
	import by.controller.BottomBarEvent;
	import flash.events.Event;

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
			eventMap.mapListener(contextView, Event.ENTER_FRAME, onLoop);
		}
		
		protected function onStopHandler(evt:BottomBarEvent):void
		{
			eventMap.unmapListener(contextView, Event.ENTER_FRAME, onLoop);
		}
		
		private function onLoop(evt:Event):void
		{
			if(!view.isComplete)
			{
				view.step();
			}
			else
			{
				view.repeat();
			}
		}
	}

}