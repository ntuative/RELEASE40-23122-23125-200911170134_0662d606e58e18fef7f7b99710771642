package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_1278:String;
      
      protected var var_2124:Boolean;
      
      protected var var_1648:int;
      
      protected var _type:int;
      
      protected var var_1647:int;
      
      protected var var_2126:Boolean;
      
      protected var var_1636:int;
      
      protected var var_2127:Boolean;
      
      protected var _id:int;
      
      protected var var_2125:int;
      
      protected var var_1686:String;
      
      protected var var_1644:Boolean;
      
      protected var _category:int;
      
      protected var var_1640:int;
      
      protected var var_2141:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:int, param11:int, param12:int, param13:String, param14:int)
      {
         super();
         _id = param1;
         _type = param2;
         var_2125 = param3;
         _category = param4;
         var_1644 = param5;
         var_2127 = param6;
         var_2124 = param7;
         var_1278 = param8;
         var_2141 = param9;
         var_1648 = param10;
         var_1640 = param11;
         var_1647 = param12;
         var_1686 = param13;
         var_1636 = param14;
      }
      
      public function get locked() : Boolean
      {
         return var_2126;
      }
      
      public function get songId() : int
      {
         return var_1636;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2126 = param1;
      }
      
      public function get ref() : int
      {
         return var_2125;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get slotId() : String
      {
         return var_1686;
      }
      
      public function get expires() : int
      {
         return var_2141;
      }
      
      public function get creationYear() : int
      {
         return var_1647;
      }
      
      public function get creationDay() : int
      {
         return var_1648;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2127;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get groupable() : Boolean
      {
         return var_1644;
      }
      
      public function get creationMonth() : int
      {
         return var_1640;
      }
      
      public function get extras() : String
      {
         return var_1278;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2124;
      }
   }
}
