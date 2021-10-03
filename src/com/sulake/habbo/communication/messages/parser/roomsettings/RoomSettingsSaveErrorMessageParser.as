package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1524:int = 9;
      
      public static const const_1404:int = 4;
      
      public static const const_1493:int = 1;
      
      public static const const_1310:int = 10;
      
      public static const const_1471:int = 2;
      
      public static const const_1199:int = 7;
      
      public static const const_1338:int = 11;
      
      public static const const_1503:int = 3;
      
      public static const const_1341:int = 8;
      
      public static const const_1252:int = 5;
      
      public static const const_1398:int = 6;
      
      public static const const_1289:int = 12;
       
      
      private var var_2087:String;
      
      private var _roomId:int;
      
      private var var_1124:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2087;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1124 = param1.readInteger();
         var_2087 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1124;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
