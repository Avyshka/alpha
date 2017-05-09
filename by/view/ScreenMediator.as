package by.view
{
	import org.robotlegs.mvcs.Mediator;
	import by.controller.BottomBarEvent;
	import flash.events.Event;
	import by.controller.ScreenEvent;
	import by.model.BottomBarModel;

	public class ScreenMediator extends Mediator
	{
		[Inject]
		public var view:ScreenView;
		
		[Inject]
		public var model:BottomBarModel;
		
		public function ScreenMediator()
		{
			// constructor code
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, BottomBarEvent.PLAY, onPlayHandler);
			eventMap.mapListener(eventDispatcher, BottomBarEvent.STOP, onStopHandler);
			eventMap.mapListener(eventDispatcher, ScreenEvent.REPEAT, onRepeatHandler);
		}
		
		protected function onPlayHandler(evt:BottomBarEvent):void
		{
			eventMap.mapListener(contextView, Event.ENTER_FRAME, onLoop);
		}
		
		protected function onStopHandler(evt:BottomBarEvent):void
		{
			eventMap.unmapListener(contextView, Event.ENTER_FRAME, onLoop);
		}
		
		protected function onRepeatHandler(evt:ScreenEvent):void
		{
			view.repeat();
		}
		
		private function onLoop(evt:Event):void
		{
			if(!view.isComplete)
			{
				view.step();
			}
			else
			{
				if(!model.isComplete)
				{
					model.complete();
					eventDispatcher.dispatchEvent(new ScreenEvent(ScreenEvent.COMPLETE));
				}
			}
		}
	}

}