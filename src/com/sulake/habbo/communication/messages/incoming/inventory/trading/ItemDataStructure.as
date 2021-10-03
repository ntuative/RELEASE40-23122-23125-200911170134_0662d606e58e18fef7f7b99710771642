package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1648:int;
      
      private var var_1645:int;
      
      private var var_916:String;
      
      private var var_1641:int;
      
      private var var_1642:String;
      
      private var var_1643:int;
      
      private var var_1647:int;
      
      private var _category:int;
      
      private var var_1649:int;
      
      private var var_1640:int;
      
      private var var_1646:int;
      
      private var var_1644:Boolean;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:Boolean, param12:int)
      {
         super();
         var_1641 = param1;
         var_916 = param2;
         var_1645 = param3;
         var_1646 = param4;
         _category = param5;
         var_1642 = param6;
         var_1643 = param7;
         var_1648 = param8;
         var_1640 = param9;
         var_1647 = param10;
         var_1644 = param11;
         var_1649 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1646;
      }
      
      public function get groupable() : Boolean
      {
         return var_1644;
      }
      
      public function get creationMonth() : int
      {
         return var_1640;
      }
      
      public function get roomItemID() : int
      {
         return var_1645;
      }
      
      public function get itemType() : String
      {
         return var_916;
      }
      
      public function get itemID() : int
      {
         return var_1641;
      }
      
      public function get itemSpecificData() : String
      {
         return var_1642;
      }
      
      public function get songID() : int
      {
         return var_1649;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1643;
      }
      
      public function get creationYear() : int
      {
         return var_1647;
      }
      
      public function get creationDay() : int
      {
         return var_1648;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
