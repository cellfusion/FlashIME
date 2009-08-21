package  
{
	import flash.text.TextFieldType;
	import jp.cellfusion.ime.IME;

	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;

	/**
	 * @author Mk-10:cellfusion
	 */
	public class Sample extends Sprite 
	{
		private var _tf:TextField;
		private var _ime:IME;

		public function Sample()
		{
			_tf = new TextField();
			_tf.x = 4;
			_tf.y = 4;
			_tf.width = 550-8;
			_tf.height = 24;
			
			_tf.type = TextFieldType.INPUT;
			_tf.border = true;
			
			var tf:TextFormat = _tf.defaultTextFormat;
			tf.font = '_等幅';
			tf.color = 0x000000;
			tf.size = 18;
			
			_tf.defaultTextFormat = tf;
			addChild(_tf);
			
			_ime = new IME(_tf);
		}
	}
}
