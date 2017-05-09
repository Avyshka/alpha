package by.controller
{
	import flash.events.Event;

	public class ScreenEvent extends Event
	{
		public static const COMPLETE:String = "complete";
		public static const REPEAT:String = "repeat";
		
		public function ScreenEvent(type:String)
		{
			super(type);
		}

	}

}