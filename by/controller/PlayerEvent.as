package by.controller
{
	import flash.events.Event;

	public class PlayerEvent extends Event
	{
		public static const PLAY:String = "play";
		public static const STOP:String = "stop";
		public static const COMPLETE:String = "complete";
		public static const REPEAT:String = "repeat";
		public static const TICK:String = "tick";
		
		public function PlayerEvent(type:String)
		{
			super(type);
		}

	}

}