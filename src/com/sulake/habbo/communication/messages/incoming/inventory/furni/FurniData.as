package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1685:String;
      
      private var var_916:String;
      
      private var var_1684:Boolean;
      
      private var var_1681:int;
      
      private var var_1682:Boolean;
      
      private var var_1686:String = "";
      
      private var _category:int;
      
      private var var_1212:int;
      
      private var var_1683:Boolean;
      
      private var var_1636:int = -1;
      
      private var _objId:int;
      
      private var var_1680:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:int)
      {
         super();
         var_1681 = param1;
         var_916 = param2;
         _objId = param3;
         var_1212 = param4;
         _category = param5;
         var_1685 = param6;
         var_1684 = param7;
         var_1682 = param8;
         var_1683 = param9;
         var_1680 = param10;
      }
      
      public function get classId() : int
      {
         return var_1212;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1684;
      }
      
      public function get stripId() : int
      {
         return var_1681;
      }
      
      public function get stuffData() : String
      {
         return var_1685;
      }
      
      public function get songId() : int
      {
         return var_1636;
      }
      
      public function setSongData(param1:String, param2:int) : void
      {
         var_1686 = param1;
         var_1636 = param2;
      }
      
      public function get expiryTime() : int
      {
         return var_1680;
      }
      
      public function get itemType() : String
      {
         return var_916;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get slotId() : String
      {
         return var_1686;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1683;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1682;
      }
   }
}
