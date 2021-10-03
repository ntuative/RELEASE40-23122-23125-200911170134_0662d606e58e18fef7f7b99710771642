package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_825:String = "select_outfit";
       
      
      private var var_1506:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_825);
         var_1506 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1506;
      }
   }
}
