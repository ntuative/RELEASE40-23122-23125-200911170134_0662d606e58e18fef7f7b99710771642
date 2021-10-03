package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_372:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_379:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_73:String = "RWPDUE_CONTENTS";
      
      public static const const_369:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_346:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_61:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_202:String;
      
      private var var_1544:BitmapData;
      
      private var var_157:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_157 = param2;
         var_202 = param3;
         _controller = param4;
         var_1544 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1544;
      }
      
      public function get text() : String
      {
         return var_202;
      }
      
      public function get objectId() : int
      {
         return var_157;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
