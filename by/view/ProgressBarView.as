package by.view
{
	import flash.display.Sprite;

	public class ProgressBarView extends Sprite
	{
		public static const RANGE:uint = 448;
		
		private var _background:Sprite;
		private var _line:Sprite;
		private var _point:Sprite;
		
		public function ProgressBarView()
		{
			_background = new ProgressBarBg_mc();
			addChild(_background);
			
			_line = new ProgressBarLine_mc();
			_line.width = 0;
			addChild(_line);
			
			_point = new ProgressBarPoint_mc();
			addChild(_point);
		}

	}

}