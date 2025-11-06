package {
  import flash.display.Sprite;
  import flash.text.TextField;
  import flash.text.TextFormat;
  import flash.events.Event;
  import flash.utils.Timer;
  import flash.events.TimerEvent;

  public class Main extends Sprite {
    private var tf:TextField = new TextField();

    public function Main() {
      addEventListener(Event.ADDED_TO_STAGE, onAdded);
      trace("Hello World from AS3 on M4");

      var timer:Timer = new Timer(5000);
      timer.addEventListener(TimerEvent.TIMER, function(e:TimerEvent):void {
        trace("Hello again from AS3 on M4");
      });
      timer.start();
    }

    private function onAdded(e:Event):void {
      removeEventListener(Event.ADDED_TO_STAGE, onAdded);

      tf.defaultTextFormat = new TextFormat("_sans", 20, 0x222222, true);
      tf.text = "Hello World from AS3 on M4 🎯";
      tf.width = 600;
      tf.height = 200;
      tf.selectable = false;

      // center on stage
      tf.x = (stage.stageWidth - tf.textWidth) * 0.5 - 4;
      tf.y = (stage.stageHeight - tf.textHeight) * 0.5 - 4;

      addChild(tf);
    }
  }
}
