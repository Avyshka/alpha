package by
{
	import flash.display.DisplayObjectContainer;
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	import by.view.BottomBarView;
	import by.view.BottomBarMediator;
	import by.view.ScreenMediator;
	import by.view.ScreenView;
	import by.model.PlayerModel;
	import by.view.ProgressBarView;
	import by.view.ProgressBarMediator;
	
	public class RunGame extends Context  
	{
		public function RunGame(contextView:DisplayObjectContainer)
		{
			super(contextView);
		}
		
		override public function startup():void
		{
			// Map some Commands to Events
			/*commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, CreateBallCommand, ContextEvent, true);
			commandMap.mapEvent(HelloFlashEvent.BALL_CLICKED, CreateBallCommand, HelloFlashEvent );
			
			// Create a rule for Dependency Injection
			injector.mapSingleton(StatsModel);
			
			// Here we bind Mediator Classes to View Classes:
			// Mediators will be created automatically when
			// view instances arrive on stage (anywhere inside the context view)
			mediatorMap.mapView(Ball, BallMediator);
			mediatorMap.mapView(Readout, ReadoutMediator);
			
			// Manually add something to stage
			contextView.addChild(new Readout());
			*/
			injector.mapSingleton(PlayerModel);
			
			mediatorMap.mapView(ScreenView, ScreenMediator);
			mediatorMap.mapView(ProgressBarView, ProgressBarMediator);
			mediatorMap.mapView(BottomBarView, BottomBarMediator);
			
			var screen:ScreenView = new ScreenView();
			screen.y = screen.x = 8;
			
			var progressBar:ProgressBarView = new ProgressBarView();
			progressBar.scaleX = progressBar.scaleY = .85;
			progressBar.y = screen.y + screen.height - progressBar.height * 2.25;
			progressBar.x = (screen.x + screen.width * .5) - (ProgressBarView.RANGE * .5 * progressBar.scaleX);
			
			
			var bottomBar:BottomBarView = new BottomBarView();
			bottomBar.y = 360 - 64;
			
			contextView.addChild(screen);
			contextView.addChild(progressBar);
			contextView.addChild(bottomBar);
			
			// And we're done
			super.startup();
		}
	
	}
}