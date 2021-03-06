package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_140:String = "RWPIUE_PET_INFO";
       
      
      private var var_1716:int;
      
      private var var_1719:int;
      
      private var var_1765:int;
      
      private var var_1711:int;
      
      private var var_1768:int;
      
      private var var_1766:int;
      
      private var var_1718:int;
      
      private var var_936:int;
      
      private var var_1767:int;
      
      private var var_1763:int;
      
      private var _id:int;
      
      private var _petRespect:int;
      
      private var var_1764:Boolean;
      
      private var var_1890:int;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1762:Boolean;
      
      private var _name:String;
      
      private var var_717:int;
      
      private var var_1712:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.const_140,param10,param11);
         var_936 = param1;
         var_1890 = param2;
         _name = param3;
         _id = param4;
         _image = param5;
         var_1762 = param6;
         var_1712 = param7;
         _ownerName = param8;
         var_1763 = param9;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1766 = param1;
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1762;
      }
      
      public function get level() : int
      {
         return var_1716;
      }
      
      public function get energy() : int
      {
         return var_1718;
      }
      
      public function set level(param1:int) : void
      {
         var_1716 = param1;
      }
      
      public function get petRace() : int
      {
         return var_1890;
      }
      
      public function set energy(param1:int) : void
      {
         var_1718 = param1;
      }
      
      public function get nutrition() : int
      {
         return var_1711;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_717 = param1;
      }
      
      public function get experienceMax() : int
      {
         return var_1768;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get nutritionMax() : int
      {
         return var_1765;
      }
      
      public function get ownerId() : int
      {
         return var_1712;
      }
      
      public function set nutrition(param1:int) : void
      {
         var_1711 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1768 = param1;
      }
      
      public function get roomIndex() : int
      {
         return var_1763;
      }
      
      public function get energyMax() : int
      {
         return var_1767;
      }
      
      public function get levelMax() : int
      {
         return var_1766;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get petRespectLeft() : int
      {
         return var_717;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         var_1764 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1765 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set petRespect(param1:int) : void
      {
         _petRespect = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1719 = param1;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return var_1764;
      }
      
      public function get experience() : int
      {
         return var_1719;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1767 = param1;
      }
      
      public function get petType() : int
      {
         return var_936;
      }
   }
}
