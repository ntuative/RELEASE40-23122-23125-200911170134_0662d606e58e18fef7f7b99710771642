package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_183:String = "RWUIUE_PEER";
      
      public static const const_197:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1202:String = "BOT";
      
      public static const const_808:int = 2;
      
      public static const const_1148:int = 0;
      
      public static const const_878:int = 3;
       
      
      private var var_1157:String = "";
      
      private var var_1667:Boolean = false;
      
      private var var_1653:int = 0;
      
      private var var_1562:int = 0;
      
      private var var_1661:Boolean = false;
      
      private var var_1156:String = "";
      
      private var var_1666:Boolean = false;
      
      private var _respectLeft:int = 0;
      
      private var var_1668:Boolean = true;
      
      private var var_901:int = 0;
      
      private var var_1662:Boolean = false;
      
      private var var_1164:Boolean = false;
      
      private var var_1665:Boolean = false;
      
      private var var_1564:int = 0;
      
      private var var_1664:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_257:Array;
      
      private var var_1165:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1651:int = 0;
      
      private var var_1660:Boolean = false;
      
      private var var_1663:int = 0;
      
      private var var_1563:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_257 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1562;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1562 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1667;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1668;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1668 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1666 = param1;
      }
      
      public function get motto() : String
      {
         return var_1157;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1662 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1164;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1157 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1660;
      }
      
      public function get method_2() : String
      {
         return var_1563;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1164 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1664;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1564 = param1;
      }
      
      public function get badges() : Array
      {
         return var_257;
      }
      
      public function get amIController() : Boolean
      {
         return var_1661;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1661 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1660 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1663 = param1;
      }
      
      public function set method_2(param1:String) : void
      {
         var_1563 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1156 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1666;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1662;
      }
      
      public function get carryItem() : int
      {
         return var_1564;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1165;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1165 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         _respectLeft = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1663;
      }
      
      public function get realName() : String
      {
         return var_1156;
      }
      
      public function set webID(param1:int) : void
      {
         var_1651 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_257 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1665 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1664 = param1;
      }
      
      public function get respectLeft() : int
      {
         return _respectLeft;
      }
      
      public function get webID() : int
      {
         return var_1651;
      }
      
      public function set groupId(param1:int) : void
      {
         var_901 = param1;
      }
      
      public function get xp() : int
      {
         return var_1653;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1667 = param1;
      }
      
      public function get groupId() : int
      {
         return var_901;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1665;
      }
      
      public function set xp(param1:int) : void
      {
         var_1653 = param1;
      }
   }
}
