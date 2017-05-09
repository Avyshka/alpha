package by.view
{
	import flash.display.Sprite;
	import flash.display.MovieClip;

	public class ScreenView extends Sprite
	{
		private static const SCR_W:int = 464;
		private static const SCR_H:int = 272;
		private static const SCR_W_HALF:int = SCR_W / 2;
		private static const SCR_H_HALF:int = SCR_H / 2;
		
		private var _screen:Sprite;
		private var _mask:Sprite;
		private var _video:MovieClip;
		
		public function ScreenView()
		{
			_screen = new Screen_mc();
			addChild(_screen);
			
			_video = new Video_mc();
			_video.x = SCR_W_HALF;
			_video.y = SCR_H_HALF;
			_video.scaleX = _video.scaleY = .4;
			_video.stop();
			addChild(_video);
			
			_mask = new ScreenMask_mc();
			_mask.x = _video.x;
			_mask.y = _video.y;
			addChild(_mask);
			
			_video.mask = _mask;
		}
		
		public function step():void
		{
			_video.nextFrame();
		}
		
		public function repeat():void
		{
			_video.gotoAndStop(1);
		}
		
		public function get isComplete():Boolean
		{
			return _video.currentFrame == _video.totalFrames;
		}
		
		public function get percent():Number { return _video.currentFrame / _video.totalFrames; }
	}

}