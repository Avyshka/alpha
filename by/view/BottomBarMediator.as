package by.view
{
	import org.robotlegs.mvcs.Mediator;

	public class BottomBarMediator extends Mediator
	{
		[Inject]
		public var view:BottomBarView;
		
		/*[Inject]
		public var statsModel:StatsModel;*/
		
		public function BottomBarMediator()
		{
			// constructor code
		}
		
		override public function onRegister():void
		{
			// Listen to the context
			//eventMap.mapListener(eventDispatcher, HelloFlashEvent.BALL_CLICKED, onBallClicked);
		}
		
		/*protected function onBallClicked(e:HelloFlashEvent):void
		{
			// Manipulate the view
			//view.setText('Click count: ' + statsModel.ballClickCount);
		}*/

	}

}