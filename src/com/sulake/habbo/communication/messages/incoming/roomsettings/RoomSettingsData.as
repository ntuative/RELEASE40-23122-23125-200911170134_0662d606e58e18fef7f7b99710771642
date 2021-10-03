package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_445:int = 0;
      
      public static const const_111:int = 2;
      
      public static const const_159:int = 1;
      
      public static const const_680:Array = ["open","closed","password"];
       
      
      private var var_1578:int;
      
      private var var_1583:int;
      
      private var var_1577:Array;
      
      private var var_1581:Boolean;
      
      private var var_1087:String;
      
      private var var_1582:Boolean;
      
      private var var_1576:int;
      
      private var var_1575:int;
      
      private var var_1158:int;
      
      private var var_1580:Boolean;
      
      private var _roomId:int;
      
      private var var_1579:Boolean;
      
      private var _name:String;
      
      private var var_569:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1576;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1576 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_569;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1581;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1579;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1578 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1577 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         var_1579 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_569 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1583;
      }
      
      public function get categoryId() : int
      {
         return var_1158;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1581 = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         var_1580 = param1;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         var_1582 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1578;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1577;
      }
      
      public function get showOwnerName() : Boolean
      {
         return var_1580;
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return var_1582;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1575 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1583 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1575;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1158 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1087 = param1;
      }
      
      public function get description() : String
      {
         return var_1087;
      }
   }
}
