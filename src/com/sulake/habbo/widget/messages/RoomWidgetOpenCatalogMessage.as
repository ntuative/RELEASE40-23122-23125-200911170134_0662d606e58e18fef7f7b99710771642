package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_527:String = "RWOCM_CLUB_MAIN";
      
      public static const const_594:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2097:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_594);
         var_2097 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2097;
      }
   }
}
