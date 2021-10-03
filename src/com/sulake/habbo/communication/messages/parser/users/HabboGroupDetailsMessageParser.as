package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboGroupDetailsMessageParser implements IMessageParser
   {
       
      
      private var var_607:String = "";
      
      private var _name:String = "";
      
      private var _roomId:int = -1;
      
      private var var_901:int = -1;
      
      private var var_1087:String = "";
      
      public function HabboGroupDetailsMessageParser()
      {
         super();
      }
      
      public function get groupId() : int
      {
         return var_901;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_901 = param1.readInteger();
         if(var_901 != -1)
         {
            _name = param1.readString();
            var_1087 = param1.readString();
            _roomId = param1.readInteger();
            var_607 = param1.readString();
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_901 = -1;
         _name = "";
         var_1087 = "";
         _roomId = -1;
         var_607 = "";
         return true;
      }
      
      public function get roomName() : String
      {
         return var_607;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get description() : String
      {
         return var_1087;
      }
   }
}
