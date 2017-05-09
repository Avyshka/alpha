package by.view
{
	import org.robotlegs.mvcs.Mediator;
	import by.model.PlayerModel;

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
			
		}
	}

}