package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_399:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_581:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_577:String;
      
      private var var_157:int;
      
      private var var_202:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_157 = param2;
         var_202 = param3;
         var_577 = param4;
      }
      
      public function get objectId() : int
      {
         return var_157;
      }
      
      public function get text() : String
      {
         return var_202;
      }
      
      public function get colorHex() : String
      {
         return var_577;
      }
   }
}
