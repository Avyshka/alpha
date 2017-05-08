package by.view
{
	import flash.display.Sprite;

	public class BottomBarView extends Sprite
	{
		private var _bg:Sprite;
		private var _btnLarge:Sprite;
		private var _iconPlay:Sprite;
		private var _iconStop:Sprite;
		
		public function BottomBarView()
		{
			_bg = new BottomBarBg_mc();
			addChild(_bg);
			
			_btnLarge = new BtnLarge_mc();
			_btnLarge.x = _bg.width * .5;
			_btnLarge.y = _bg.height - _btnLarge.height * .5 - 4;
			addChild(_btnLarge);
			
			_iconPlay = new BtnStatePlay_mc();
			_iconPlay.x = _btnLarge.x;
			_iconPlay.y = _btnLarge.y;
			addChild(_iconPlay);
			
			_iconStop = new BtnStateStop_mc();
			_iconStop.x = _btnLarge.x;
			_iconStop.y = _btnLarge.y;
			_iconStop.visible = false;
			addChild(_iconStop);
		}

	}

}