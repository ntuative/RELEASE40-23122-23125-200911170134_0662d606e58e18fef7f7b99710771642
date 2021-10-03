package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1753:String;
      
      private var var_1149:String;
      
      private var var_1754:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1754 = param1;
         var_1149 = param2;
         var_1753 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1754,var_1149,var_1753];
      }
      
      public function dispose() : void
      {
      }
   }
}
