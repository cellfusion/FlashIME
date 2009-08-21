package jp.cellfusion.ime 
{
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.TextEvent;
	import flash.text.TextField;

	/**
	 * @author Mk-10:cellfusion
	 */
	public class IME 
	{
		private var _textField:TextField;
		private var _hoge:Boolean;
		private var _inputStr:String;

		public function IME(textField:TextField) 
		{
			_textField = textField;
			_inputStr = '';
			hoge = true;
		}

		private function input(event:TextEvent):void
		{
			_inputStr += event.text;
		}

		private function change(event:Event):void
		{
			fuga();
		}

		/**
		 * inputStr に入っている文字列をひらがなに変換して textField に表示する
		 */
		private function fuga():void
		{
			var pattern:RegExp = /([aiueo]|[kgsztdnhbpmyrw][aiueo]|[kgsztdnhbpmr][y][auo]|nn)/ig;
			
			if (pattern.test(_inputStr)) {
				var text:String = _inputStr;
				_textField.text = text.replace(pattern, hige);
			} else {
				_textField.text = _inputStr;
			}
		}

		private function hige():String
		{
			return translate(arguments[0]);
		}

		/**
		 * 文字をひらがなに変換する
		 */
		private function translate(str:String):String
		{
			var r:String = '';
			switch (str) {
				case 'a':  r = 'あ'; break;				case 'i':  r = 'い'; break;				case 'u':  r = 'う'; break;				case 'e':  r = 'え'; break;				case 'o':  r = 'お'; break;
				
				case 'ka':  r = 'か'; break;
				case 'ki':  r = 'き'; break;
				case 'ku':  r = 'く'; break;
				case 'ke':  r = 'け'; break;
				case 'ko':  r = 'こ'; break;
				
				case 'ga':  r = 'が'; break;
				case 'gi':  r = 'ぎ'; break;
				case 'gu':  r = 'ぐ'; break;
				case 'ge':  r = 'げ'; break;
				case 'go':  r = 'ご'; break;
				
				case 'sa':  r = 'さ'; break;
				case 'si':  r = 'し'; break;
				case 'su':  r = 'す'; break;
				case 'se':  r = 'せ'; break;
				case 'so':  r = 'そ'; break;
				
				case 'za':  r = 'ざ'; break;
				case 'zi':  r = 'じ'; break;
				case 'zu':  r = 'ず'; break;
				case 'ze':  r = 'ぜ'; break;
				case 'zo':  r = 'ぞ'; break;
				
				case 'ta':  r = 'た'; break;
				case 'ti':  r = 'ち'; break;
				case 'tu':  r = 'つ'; break;
				case 'te':  r = 'て'; break;
				case 'to':  r = 'と'; break;
				
				case 'da':  r = 'だ'; break;
				case 'di':  r = 'ぢ'; break;
				case 'du':  r = 'づ'; break;
				case 'de':  r = 'で'; break;
				case 'do':  r = 'ど'; break;
				
				case 'na':  r = 'な'; break;
				case 'ni':  r = 'に'; break;
				case 'nu':  r = 'ぬ'; break;
				case 'ne':  r = 'ね'; break;
				case 'no':  r = 'の'; break;
				
				case 'ha':  r = 'は'; break;
				case 'hi':  r = 'ひ'; break;
				case 'hu':  r = 'ふ'; break;
				case 'he':  r = 'へ'; break;
				case 'ho':  r = 'ほ'; break;
				
				case 'ba':  r = 'ば'; break;
				case 'bi':  r = 'び'; break;
				case 'bu':  r = 'ぶ'; break;
				case 'be':  r = 'べ'; break;
				case 'bo':  r = 'ぼ'; break;
				
				case 'pa':  r = 'ぱ'; break;
				case 'pi':  r = 'ぴ'; break;
				case 'pu':  r = 'ぷ'; break;
				case 'pe':  r = 'ぺ'; break;
				case 'po':  r = 'ぽ'; break;
				
				case 'ma':  r = 'ま'; break;
				case 'mi':  r = 'み'; break;
				case 'mu':  r = 'む'; break;
				case 'me':  r = 'め'; break;
				case 'mo':  r = 'も'; break;
				
				case 'ya':  r = 'や'; break;
				case 'yu':  r = 'ゆ'; break;
				case 'yo':  r = 'よ'; break;
				
				case 'ra':  r = 'ら'; break;
				case 'ri':  r = 'り'; break;
				case 'ru':  r = 'る'; break;
				case 're':  r = 'れ'; break;
				case 'ro':  r = 'ろ'; break;
				
				case 'wa':  r = 'わ'; break;
				case 'wo':  r = 'を'; break;				case 'nn':  r = 'ん'; break;
								case 'kya':  r = 'きゃ'; break;				case 'kyu':  r = 'きゅ'; break;				case 'kyo':  r = 'きょ'; break;
				
				case 'gya':  r = 'ぎゃ'; break;
				case 'gyu':  r = 'ぎゅ'; break;
				case 'gyo':  r = 'ぎょ'; break;
				
				case 'sya':  r = 'しゃ'; break;
				case 'syu':  r = 'しゅ'; break;
				case 'syo':  r = 'しょ'; break;
				
				case 'zya':  r = 'じゃ'; break;
				case 'zyu':  r = 'じゅ'; break;
				case 'zyo':  r = 'じょ'; break;
				
				case 'tya':  r = 'ちゃ'; break;
				case 'tyu':  r = 'ちゅ'; break;
				case 'tyo':  r = 'ちょ'; break;
				
				case 'dya':  r = 'ぢゃ'; break;
				case 'dyu':  r = 'ぢゅ'; break;
				case 'dyo':  r = 'ぢょ'; break;
				
				case 'nya':  r = 'にゃ'; break;
				case 'nyu':  r = 'にゅ'; break;
				case 'nyo':  r = 'にょ'; break;
				
				case 'hya':  r = 'ひゃ'; break;
				case 'hyu':  r = 'ひゅ'; break;
				case 'hyo':  r = 'ひょ'; break;
				
				case 'bya':  r = 'びゃ'; break;
				case 'byu':  r = 'びゅ'; break;
				case 'byo':  r = 'びょ'; break;
				
				case 'pya':  r = 'ぴゃ'; break;
				case 'pyu':  r = 'ぴゅ'; break;
				case 'pyo':  r = 'ぴょ'; break;
				
				case 'mya':  r = 'みゃ'; break;
				case 'myu':  r = 'みゅ'; break;
				case 'myo':  r = 'みょ'; break;
				
				case 'rya':  r = 'りゃ'; break;
				case 'ryu':  r = 'りゅ'; break;
				case 'ryo':  r = 'りょ'; break;
				default: break;
			}
			
			return r;
		}

		private function keyDown(event:KeyboardEvent):void
		{
			switch (event.keyCode) {
				case 8: 
					// BackSpace
					_inputStr = _inputStr.substring(0, _inputStr.length - 1);
					break;
			}
			
			fuga();
		}

		public function get hoge():Boolean
		{
			return _hoge;
		}

		public function set hoge(hoge:Boolean):void
		{
			if (hoge) {
				_textField.addEventListener(TextEvent.TEXT_INPUT, input);
				_textField.addEventListener(Event.CHANGE, change);
				_textField.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			} else {
				_textField.removeEventListener(TextEvent.TEXT_INPUT, input);
				_textField.removeEventListener(Event.CHANGE, change);
				_textField.removeEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			}
			
			_hoge = hoge;
		}
	}
}
