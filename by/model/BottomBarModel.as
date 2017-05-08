package by.model
{
	import org.robotlegs.mvcs.Actor;

	public class BottomBarModel extends Actor
	{
		private var _isPlay:Boolean;
		
		public function BottomBarModel()
		{
			_isPlay = false;
		}
		
		public function play():void
		{
			_isPlay = true;
		}
		
		public function stop():void
		{
			_isPlay = false;
		}
		
		public function get isPlay():Boolean { return _isPlay; }
	}

}