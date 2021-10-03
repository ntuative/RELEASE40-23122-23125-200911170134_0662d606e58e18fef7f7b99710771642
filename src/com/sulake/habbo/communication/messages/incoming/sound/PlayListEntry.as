package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1636:int;
      
      private var var_1634:int = 0;
      
      private var var_1635:String;
      
      private var var_1637:int;
      
      private var var_1638:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1636 = param1;
         var_1637 = param2;
         var_1638 = param3;
         var_1635 = param4;
      }
      
      public function get length() : int
      {
         return var_1637;
      }
      
      public function get name() : String
      {
         return var_1638;
      }
      
      public function get creator() : String
      {
         return var_1635;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1634;
      }
      
      public function get id() : int
      {
         return var_1636;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1634 = param1;
      }
   }
}
