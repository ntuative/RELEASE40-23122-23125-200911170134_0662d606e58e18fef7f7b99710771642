package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   
   public class InfostandUserData
   {
       
      
      private var var_1563:String = "";
      
      private var var_1564:int = 0;
      
      private var _userName:String = "";
      
      private var var_257:Array;
      
      private var _type:String;
      
      private var _userId:int = 0;
      
      private var var_1562:int = 0;
      
      private var _respectLeft:int = 0;
      
      private var var_901:int = 0;
      
      private var var_717:int = 0;
      
      public function InfostandUserData()
      {
         var_257 = [];
         super();
      }
      
      public function get groupId() : int
      {
         return var_901;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1562 = param1;
      }
      
      public function isBot() : Boolean
      {
         return type == RoomWidgetUserInfoUpdateEvent.BOT;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get userRoomId() : int
      {
         return var_1562;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set userId(param1:int) : void
      {
         _userId = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1564;
      }
      
      public function get petRespectLeft() : int
      {
         return var_717;
      }
      
      public function get method_2() : String
      {
         return var_1563;
      }
      
      public function set badges(param1:Array) : void
      {
         var_257 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         _respectLeft = param1;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1564 = param1;
      }
      
      public function get respectLeft() : int
      {
         return _respectLeft;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_717 = param1;
      }
      
      public function set userName(param1:String) : void
      {
         _userName = param1;
      }
      
      public function get badges() : Array
      {
         return var_257.slice();
      }
      
      public function setData(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         userId = param1.webID;
         userName = param1.name;
         badges = param1.badges;
         groupId = param1.groupId;
         method_2 = param1.method_2;
         respectLeft = param1.respectLeft;
         carryItem = param1.carryItem;
         userRoomId = param1.userRoomId;
         type = param1.type;
      }
      
      public function set groupId(param1:int) : void
      {
         var_901 = param1;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function set method_2(param1:String) : void
      {
         var_1563 = param1;
      }
   }
}
