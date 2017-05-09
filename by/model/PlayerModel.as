package by.model
{
	import org.robotlegs.mvcs.Actor;

	public class PlayerModel extends Actor
	{
		private var _isPlay:Boolean;
		private var _isComplete:Boolean;
		private var _percent:Number;
		
		public function PlayerModel()
		{
			_isPlay = false;
			_isComplete = false;
		}
		
		public function play():void
		{
			_isPlay = true;
			_isComplete = false;
		}
		
		public function stop():void
		{
			_isPlay = false;
		}
		
		public function complete():void
		{
			_isComplete = true;
		}
		
		public function get isPlay():Boolean { return _isPlay; }
		public function get isComplete():Boolean { return _isComplete; }
		
		public function set percent(value:Number):void { _percent = value; }
		public function get percent():Number { return _percent; }
	}

}