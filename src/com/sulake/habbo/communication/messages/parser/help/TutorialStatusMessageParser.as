package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_951:Boolean;
      
      private var var_952:Boolean;
      
      private var var_953:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_951;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_952;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_953 = param1.readBoolean();
         var_952 = param1.readBoolean();
         var_951 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_953;
      }
      
      public function flush() : Boolean
      {
         var_953 = false;
         var_952 = false;
         var_951 = false;
         return true;
      }
   }
}
