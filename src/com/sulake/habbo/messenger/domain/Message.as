package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_679:int = 2;
      
      public static const const_772:int = 6;
      
      public static const const_566:int = 1;
      
      public static const const_587:int = 3;
      
      public static const const_982:int = 4;
      
      public static const const_658:int = 5;
       
      
      private var var_1693:String;
      
      private var var_880:int;
      
      private var var_1692:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_880 = param2;
         var_1692 = param3;
         var_1693 = param4;
      }
      
      public function get time() : String
      {
         return var_1693;
      }
      
      public function get senderId() : int
      {
         return var_880;
      }
      
      public function get messageText() : String
      {
         return var_1692;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
