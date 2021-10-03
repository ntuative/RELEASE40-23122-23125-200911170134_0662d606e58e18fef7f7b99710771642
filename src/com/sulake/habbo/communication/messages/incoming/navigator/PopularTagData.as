package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1639:int;
      
      private var var_2018:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_2018 = param1.readString();
         var_1639 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_2018;
      }
      
      public function get userCount() : int
      {
         return var_1639;
      }
   }
}
