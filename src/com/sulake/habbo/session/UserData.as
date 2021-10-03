package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_523:String = "";
      
      private var var_1652:String = "";
      
      private var var_1654:int = 0;
      
      private var var_1653:int = 0;
      
      private var _type:int = 0;
      
      private var var_1650:String = "";
      
      private var var_1162:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1651:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1654 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1650 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_523 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1162 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1654;
      }
      
      public function set webID(param1:int) : void
      {
         var_1651 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1650;
      }
      
      public function set custom(param1:String) : void
      {
         var_1652 = param1;
      }
      
      public function get figure() : String
      {
         return var_523;
      }
      
      public function get sex() : String
      {
         return var_1162;
      }
      
      public function get custom() : String
      {
         return var_1652;
      }
      
      public function get webID() : int
      {
         return var_1651;
      }
      
      public function set xp(param1:int) : void
      {
         var_1653 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1653;
      }
   }
}
