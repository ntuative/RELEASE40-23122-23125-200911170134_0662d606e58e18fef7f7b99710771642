package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_610:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1941:int;
      
      private var var_1942:int;
      
      private var var_1990:Boolean;
      
      private var var_897:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_610);
         var_1942 = param1;
         var_1941 = param2;
         _color = param3;
         var_897 = param4;
         var_1990 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1941;
      }
      
      public function get presetNumber() : int
      {
         return var_1942;
      }
      
      public function get brightness() : int
      {
         return var_897;
      }
      
      public function get apply() : Boolean
      {
         return var_1990;
      }
   }
}
