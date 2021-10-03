package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IgnoreResultMessageParser implements IMessageParser
   {
       
      
      protected var var_576:int;
      
      public function IgnoreResultMessageParser()
      {
         super();
         var_576 = -1;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_576 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get result() : int
      {
         return var_576;
      }
   }
}
