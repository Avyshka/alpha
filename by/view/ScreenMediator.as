package by.view
{
	import org.robotlegs.mvcs.Mediator;
	import flash.events.Event;
	import by.controller.PlayerEvent;
	import by.model.PlayerModel;

	public class ScreenMediator extends Mediator
	{
		[Inject]
		public var view:ScreenView;
		
		[Inject]
		public var model:PlayerModel;
		
		public function ScreenMediator()
		{
			// constructor code
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, PlayerEvent.PLAY, onPlayHandler);
			eventMap.mapListener(eventDispatcher, PlayerEvent.STOP, onStopHandler);
			eventMap.mapListener(eventDispatcher, PlayerEvent.REPEAT, onRepeatHandler);
		}
		
		protected function onPlayHandler(evt:PlayerEvent):void
		{
			eventMap.mapListener(contextView, Event.ENTER_FRAME, onLoop);
		}
		
		protected function onStopHandler(evt:PlayerEvent):void
		{
			eventMap.unmapListener(contextView, Event.ENTER_FRAME, onLoop);
		}
		
		protected function onRepeatHandler(evt:PlayerEvent):void
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
					eventDispatcher.dispatchEvent(new PlayerEvent(PlayerEvent.COMPLETE));
				}
			}
			eventDispatcher.dispatchEvent(new PlayerEvent(PlayerEvent.TICK));
		}
	}

}