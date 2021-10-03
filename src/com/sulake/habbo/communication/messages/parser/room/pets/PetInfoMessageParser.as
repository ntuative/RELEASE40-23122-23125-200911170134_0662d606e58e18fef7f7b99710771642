package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_523:String;
      
      private var var_1716:int;
      
      private var var_1555:int;
      
      private var var_1719:int;
      
      private var var_1717:int;
      
      private var var_1711:int;
      
      private var var_1107:int;
      
      private var var_1713:int;
      
      private var var_1715:int;
      
      private var var_1718:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1712:int;
      
      private var var_1714:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get maxLevel() : int
      {
         return var_1713;
      }
      
      public function get level() : int
      {
         return var_1716;
      }
      
      public function get energy() : int
      {
         return var_1718;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1717;
      }
      
      public function flush() : Boolean
      {
         var_1107 = -1;
         return true;
      }
      
      public function get nutrition() : int
      {
         return var_1711;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1715;
      }
      
      public function get maxNutrition() : int
      {
         return var_1714;
      }
      
      public function get figure() : String
      {
         return var_523;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1555;
      }
      
      public function get petId() : int
      {
         return var_1107;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1107 = param1.readInteger();
         _name = param1.readString();
         var_1716 = param1.readInteger();
         var_1713 = param1.readInteger();
         var_1719 = param1.readInteger();
         var_1715 = param1.readInteger();
         var_1718 = param1.readInteger();
         var_1717 = param1.readInteger();
         var_1711 = param1.readInteger();
         var_1714 = param1.readInteger();
         var_523 = param1.readString();
         var_1555 = param1.readInteger();
         var_1712 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get experience() : int
      {
         return var_1719;
      }
      
      public function get ownerId() : int
      {
         return var_1712;
      }
   }
}
