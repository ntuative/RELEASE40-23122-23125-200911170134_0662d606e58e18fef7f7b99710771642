package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerPreviewMessage extends RoomWidgetMessage
   {
      
      public static const const_618:String = "RWDPM_PREVIEW_DIMMER_PRESET";
       
      
      private var var_897:int;
      
      private var _color:uint;
      
      private var var_1513:Boolean;
      
      public function RoomWidgetDimmerPreviewMessage(param1:uint, param2:int, param3:Boolean)
      {
         super(const_618);
         _color = param1;
         var_897 = param2;
         var_1513 = param3;
      }
      
      public function get brightness() : int
      {
         return var_897;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get bgOnly() : Boolean
      {
         return var_1513;
      }
   }
}
