package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1716:int;
      
      private var var_1719:int;
      
      private var var_1765:int;
      
      private var _type:int;
      
      private var var_1107:int = -1;
      
      private var var_1766:int;
      
      private var var_1711:int;
      
      private var var_1768:int;
      
      private var var_1718:int;
      
      private var var_1604:int;
      
      private var var_1767:int;
      
      private var var_1763:int;
      
      private var _petRespect:int;
      
      private var var_1764:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1762:Boolean;
      
      private var var_1712:int;
      
      private var _name:String = "";
      
      public function InfoStandPetData()
      {
         super();
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
      
      public function get nutrition() : int
      {
         return var_1711;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1768;
      }
      
      public function get id() : int
      {
         return var_1107;
      }
      
      public function get nutritionMax() : int
      {
         return var_1765;
      }
      
      public function get ownerId() : int
      {
         return var_1712;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1107 = param1.id;
         _type = param1.petType;
         var_1604 = param1.petRace;
         _image = param1.image;
         var_1762 = param1.isOwnPet;
         var_1712 = param1.ownerId;
         _ownerName = param1.ownerName;
         var_1764 = param1.canOwnerBeKicked;
         var_1716 = param1.level;
         var_1766 = param1.levelMax;
         var_1719 = param1.experience;
         var_1768 = param1.experienceMax;
         var_1718 = param1.energy;
         var_1767 = param1.energyMax;
         var_1711 = param1.nutrition;
         var_1765 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1763 = param1.roomIndex;
      }
      
      public function get roomIndex() : int
      {
         return var_1763;
      }
      
      public function get type() : int
      {
         return _type;
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
      
      public function get race() : int
      {
         return var_1604;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get experience() : int
      {
         return var_1719;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return var_1764;
      }
   }
}
