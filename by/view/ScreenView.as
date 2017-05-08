﻿package by.view
{
	import flash.display.Sprite;
	import flash.display.MovieClip;

	public class ScreenView extends Sprite
	{
		private var _screen:Sprite;
		private var _video:MovieClip;
		
		public function ScreenView()
		{
			_screen = new Screen_mc();
			addChild(_screen);
			
			_video = new Video_mc();
			_video.x = _screen.width * .5;
			_video.y = _screen.height * .5;
			_video.scaleX = _video.scaleY = .4;
			_video.stop();
			addChild(_video);
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
	}

}