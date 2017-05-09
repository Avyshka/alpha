package by.view
{
	import org.robotlegs.mvcs.Mediator;
	import flash.events.MouseEvent;
	import by.model.PlayerModel;
	import by.controller.PlayerEvent;

	public class BottomBarMediator extends Mediator
	{
		[Inject]
		public var view:BottomBarView;
		
		[Inject]
		public var model:PlayerModel;
		
		public function BottomBarMediator()
		{
			// constructor code
		}
		
		override public function onRegister():void
		{
			// Listen to the context
			//eventMap.mapListener(eventDispatcher, HelloFlashEvent.BALL_CLICKED, onBallClicked);
			eventMap.mapListener(view.btnPlay, MouseEvent.MOUSE_UP, onClick);
			
			eventMap.mapListener(view.btnPlay, MouseEvent.MOUSE_OVER, onOver);
			eventMap.mapListener(view.btnPlay, MouseEvent.MOUSE_DOWN, onDown);
			eventMap.mapListener(view.btnPlay, MouseEvent.MOUSE_OUT, onOut);
			
			eventMap.mapListener(eventDispatcher, PlayerEvent.COMPLETE, onComplete);
		}
		
		protected function onClick(e:MouseEvent):void
		{
			if(!model.isComplete)
			{
				if(!model.isPlay)
				{
					// Manipulate the model
					model.play();
					// Dispatch to context
					eventDispatcher.dispatchEvent(new PlayerEvent(PlayerEvent.PLAY));
					view.play();
				}
				else
				{
					// Manipulate the model
					model.stop();
					// Dispatch to context
					eventDispatcher.dispatchEvent(new PlayerEvent(PlayerEvent.STOP));
					view.stop();
				}
			}
			else
			{
				// Manipulate the model
				model.play();
				// Dispatch to context
				eventDispatcher.dispatchEvent(new PlayerEvent(PlayerEvent.REPEAT));
				eventDispatcher.dispatchEvent(new PlayerEvent(PlayerEvent.PLAY));
				view.play();
			}
			
			view.over();
		}
		
		protected function onOver(e:MouseEvent):void
		{
			view.over();
		}
		
		protected function onOut(e:MouseEvent):void
		{
			view.out();
		}
		
		protected function onDown(e:MouseEvent):void
		{
			view.down();
		}
		
		protected function onComplete(evt:PlayerEvent):void
		{
			view.repeat();
		}

	}

}