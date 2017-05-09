package by.view
{
	import flash.display.Sprite;

	public class BottomBarView extends Sprite
	{
		private var _bg:Sprite;
		
		private var _btnPlay:Sprite;
		private var _btnPlayUp:Sprite;
		private var _btnPlayOver:Sprite;
		private var _btnPlayDown:Sprite;
		
		private var _iconPlay:Sprite;
		private var _iconStop:Sprite;
		private var _iconRepeat:Sprite;
		
		public function BottomBarView()
		{
			// Background
			_bg = new BottomBarBg_mc();
			addChild(_bg);
			
			// Button Play
			_btnPlay = new BtnPlayMask_mc();
			_btnPlay.x = _bg.width * .5;
			_btnPlay.y = _bg.height - _btnPlay.height * .5;
						
			_btnPlayUp = new BtnPlayUp_mc();
			_btnPlayOver = new BtnPlayOver_mc();
			_btnPlayDown = new BtnPlayDown_mc();
			
			_btnPlayUp.x = _btnPlayOver.x = _btnPlayDown.x = _btnPlay.x;
			_btnPlayUp.y = _btnPlayOver.y = _btnPlayDown.y = _btnPlay.y;
			
			_btnPlayOver.visible = _btnPlayDown.visible = false;
			
			addChild(_btnPlayDown);
			addChild(_btnPlayOver);
			addChild(_btnPlayUp);
			addChild(_btnPlay);
			
			// Icons for button play
			_iconPlay = new BtnStatePlay_mc();
			_iconStop = new BtnStateStop_mc();
			_iconRepeat = new BtnStateRepeat_mc();
			
			_iconPlay.x = _iconStop.x = _iconRepeat.x = _btnPlay.x;
			_iconPlay.y = _iconStop.y = _iconRepeat.y = _btnPlay.y;
			_iconPlay.mouseEnabled = _iconStop.mouseEnabled = _iconRepeat.mouseEnabled = false;
			
			_iconStop.visible = _iconRepeat.visible = false;
			
			addChild(_iconRepeat);
			addChild(_iconStop);
			addChild(_iconPlay);
		}
		
		public function play():void
		{
			_iconPlay.visible = false;
			_iconStop.visible = true;
			_iconRepeat.visible = false;
		}
		
		public function stop():void
		{
			_iconPlay.visible = true;
			_iconStop.visible = false;
			_iconRepeat.visible = false;
		}
		
		public function repeat():void
		{
			_iconPlay.visible = false;
			_iconStop.visible = false;
			_iconRepeat.visible = true;
		}
		
		
		public function over():void
		{
			_btnPlayUp.visible = false;
			_btnPlayOver.visible = true;
			_btnPlayDown.visible = false;
		}
		
		public function out():void
		{
			_btnPlayUp.visible = true;
			_btnPlayOver.visible = false;
			_btnPlayDown.visible = false;
		}
		
		public function down():void
		{
			_btnPlayUp.visible = false;
			_btnPlayOver.visible = false;
			_btnPlayDown.visible = true;
		}
		
		public function get btnPlay():Sprite { return _btnPlay; }
	}

}