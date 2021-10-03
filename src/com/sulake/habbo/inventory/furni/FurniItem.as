package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1681:int;
      
      private var var_1682:Boolean;
      
      private var var_1636:int;
      
      private var var_1685:String;
      
      private var var_2050:Boolean = false;
      
      private var var_1680:int;
      
      private var var_411:int;
      
      private var var_916:String;
      
      private var var_1686:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1212:int;
      
      private var var_1683:Boolean;
      
      private var var_2051:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1681 = param1;
         var_916 = param2;
         _objId = param3;
         var_1212 = param4;
         var_1685 = param5;
         var_1682 = param6;
         var_1683 = param7;
         var_1680 = param8;
         var_1686 = param9;
         var_1636 = param10;
         var_411 = -1;
      }
      
      public function get songId() : int
      {
         return var_1636;
      }
      
      public function get iconCallbackId() : int
      {
         return var_411;
      }
      
      public function get expiryTime() : int
      {
         return var_1680;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2051 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2050 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_411 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1683;
      }
      
      public function get slotId() : String
      {
         return var_1686;
      }
      
      public function get classId() : int
      {
         return var_1212;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1682;
      }
      
      public function get stuffData() : String
      {
         return var_1685;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1681;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2050;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2051;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_916;
      }
   }
}
