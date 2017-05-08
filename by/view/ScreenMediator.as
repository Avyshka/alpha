package by.view
{
	import org.robotlegs.mvcs.Mediator;

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
			
		}
	}

}