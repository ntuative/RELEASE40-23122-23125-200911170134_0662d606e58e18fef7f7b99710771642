package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_990:SoundChannel = null;
      
      private var var_826:Boolean;
      
      private var var_989:Sound = null;
      
      private var var_666:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_989 = param1;
         var_989.addEventListener(Event.COMPLETE,onComplete);
         var_666 = 1;
         var_826 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_826;
      }
      
      public function stop() : Boolean
      {
         var_990.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_826 = false;
         var_990 = var_989.play(0);
         this.volume = var_666;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_666;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_990.position;
      }
      
      public function get length() : Number
      {
         return var_989.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_666 = param1;
         if(var_990 != null)
         {
            var_990.soundTransform = new SoundTransform(var_666);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_826 = true;
      }
   }
}
