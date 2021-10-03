package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_145:int = 1;
      
      public static const const_1177:int = 3;
      
      public static const const_404:int = 2;
       
      
      private var var_2108:int;
      
      private var var_2064:int;
      
      private var var_2110:int;
      
      private var var_2003:int;
      
      private var _state:int;
      
      private var var_399:int;
      
      private var var_1139:int;
      
      private var var_1834:int;
      
      private var var_994:int;
      
      private var _roomResources:String;
      
      private var var_2111:int;
      
      private var var_2109:int;
      
      private var var_2112:String;
      
      private var var_1835:String;
      
      private var var_2105:int = 0;
      
      private var var_1243:String;
      
      private var _message:String;
      
      private var var_1964:int;
      
      private var var_2107:String;
      
      private var var_1158:int;
      
      private var var_607:String;
      
      private var var_2106:String;
      
      private var var_1376:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_994 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2105 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2109;
      }
      
      public function set roomName(param1:String) : void
      {
         var_607 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2111 = param1;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_607;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_2003 = param1;
      }
      
      public function set state(param1:int) : void
      {
         _state = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2064;
      }
      
      public function get priority() : int
      {
         return var_2108 + var_2105;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1834 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1835;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1376) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1158;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2109 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1139;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2112 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2111;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_2003;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2106 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1243 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1834;
      }
      
      public function set priority(param1:int) : void
      {
         var_2108 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2064 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2112;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2110 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1835 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1964 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1243;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1139 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2110;
      }
      
      public function set flatId(param1:int) : void
      {
         var_399 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1158 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1376 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1964;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2107 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1376;
      }
      
      public function get reportedUserId() : int
      {
         return var_994;
      }
      
      public function get flatId() : int
      {
         return var_399;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2106;
      }
      
      public function get reporterUserName() : String
      {
         return var_2107;
      }
   }
}
