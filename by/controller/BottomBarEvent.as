package by.controller
{
	import flash.events.Event;

	public class BottomBarEvent extends Event
	{
		public static const PLAY:String = "play";
		public static const STOP:String = "stop";
		
		public function BottomBarEvent(type:String)
		{
			super(type);
		}

	}

}