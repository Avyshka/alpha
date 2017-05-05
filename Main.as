package
{
	import flash.display.Sprite;
	import by.RunGame;
	
	public class Main extends Sprite
	{
		protected var context:RunGame;
		
		public function Main()
		{
			// Hold on to this!
			context = new RunGame(this);
		}
	}
}