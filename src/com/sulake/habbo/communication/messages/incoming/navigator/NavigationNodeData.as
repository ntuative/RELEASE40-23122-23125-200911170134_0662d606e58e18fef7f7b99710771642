package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1168:int;
      
      private var var_1398:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1168 = param1;
         var_1398 = param2;
         Logger.log("READ NODE: " + var_1168 + ", " + var_1398);
      }
      
      public function get nodeName() : String
      {
         return var_1398;
      }
      
      public function get nodeId() : int
      {
         return var_1168;
      }
   }
}
