package by.view
{
	import org.robotlegs.mvcs.Mediator;
	import by.controller.BottomBarEvent;
	import flash.events.MouseEvent;
	import by.model.BottomBarModel;

	public class BottomBarMediator extends Mediator
	{
		[Inject]
		public var view:BottomBarView;
		
		[Inject]
		public var model:BottomBarModel;
		
		public function BottomBarMediator()
		{
			// constructor code
		}
		
		override public function onRegister():void
		{
			// Listen to the context
			//eventMap.mapListener(eventDispatcher, HelloFlashEvent.BALL_CLICKED, onBallClicked);
			eventMap.mapListener(view.btnPlay, MouseEvent.CLICK, onClick);
		}
		
		protected function onClick(e:MouseEvent):void
		{
			if(!model.isPlay)
			{
				// Manipulate the model
				model.play();
				// Dispatch to context
				eventDispatcher.dispatchEvent(new BottomBarEvent(BottomBarEvent.PLAY));
				view.play();
			}
			else
			{
				// Manipulate the model
				model.stop();
				// Dispatch to context
				eventDispatcher.dispatchEvent(new BottomBarEvent(BottomBarEvent.STOP));
				view.stop();
			}
		}
		
		/*protected function onBallClicked(e:HelloFlashEvent):void
		{
			// Manipulate the view
			//view.setText('Click count: ' + statsModel.ballClickCount);
		}*/

	}

}