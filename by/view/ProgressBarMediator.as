package by.view
{
	import org.robotlegs.mvcs.Mediator;
	import by.model.PlayerModel;
	import by.controller.PlayerEvent;

	public class ProgressBarMediator extends Mediator
	{
		[Inject]
		public var view:ProgressBarView;
		
		[Inject]
		public var model:PlayerModel;
		
		public function ProgressBarMediator()
		{
			// constructor code
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(eventDispatcher, PlayerEvent.TICK, onLoop);
		}
		
		protected function onLoop(evt:PlayerEvent):void
		{
			view.update(model.percent);
		}
	}

}