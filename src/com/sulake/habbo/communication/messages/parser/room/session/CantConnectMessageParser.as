package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1428:int = 2;
      
      public static const const_294:int = 4;
      
      public static const const_1260:int = 1;
      
      public static const const_1178:int = 3;
       
      
      private var var_929:int = 0;
      
      private var var_754:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_929;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_929 = param1.readInteger();
         if(var_929 == 3)
         {
            var_754 = param1.readString();
         }
         else
         {
            var_754 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_929 = 0;
         var_754 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_754;
      }
   }
}
