package by.view
{
	import flash.display.Sprite;

	public class BottomBarView extends Sprite
	{
		private var _bg:Sprite;
		private var _btnPlay:Sprite;
		private var _iconPlay:Sprite;
		private var _iconStop:Sprite;
		
		public function BottomBarView()
		{
			_bg = new BottomBarBg_mc();
			addChild(_bg);
			
			_btnPlay = new BtnLarge_mc();
			_btnPlay.x = _bg.width * .5;
			_btnPlay.y = _bg.height - _btnPlay.height * .5 - 4;
			addChild(_btnPlay);
			
			_iconPlay = new BtnStatePlay_mc();
			_iconPlay.x = _btnPlay.x;
			_iconPlay.y = _btnPlay.y;
			_iconPlay.mouseEnabled = false;
			addChild(_iconPlay);
			
			_iconStop = new BtnStateStop_mc();
			_iconStop.x = _btnPlay.x;
			_iconStop.y = _btnPlay.y;
			_iconStop.mouseEnabled = false;
			_iconStop.visible = false;
			addChild(_iconStop);
		}
		
		public function play():void
		{
			_iconPlay.visible = false;
			_iconStop.visible = true;
		}
		
		public function stop():void
		{
			_iconPlay.visible = true;
			_iconStop.visible = false;
		}
		
		public function get btnPlay():Sprite { return _btnPlay; }
	}

}