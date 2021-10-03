package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1369:int = 10;
       
      
      private var var_1419:NavigatorSettingsMessageParser;
      
      private var var_1186:int;
      
      private var var_1915:Boolean;
      
      private var var_1914:int;
      
      private var var_784:Dictionary;
      
      private var var_2172:int;
      
      private var var_1917:int;
      
      private var var_1630:int;
      
      private var var_322:Array;
      
      private var var_1916:int;
      
      private var var_1205:Array;
      
      private var var_530:PublicRoomShortData;
      
      private var var_380:RoomEventData;
      
      private var var_136:MsgWithRequestId;
      
      private var var_1525:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1918:Boolean;
      
      private var var_197:GuestRoomData;
      
      private var var_642:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_322 = new Array();
         var_784 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1914;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1918;
      }
      
      public function startLoading() : void
      {
         this.var_642 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1918 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_380 != null)
         {
            var_380.dispose();
         }
         var_380 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_136 != null && var_136 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_136 != null && var_136 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_136 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_197;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_530 = null;
         var_197 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_530 = param1.publicSpace;
            var_380 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_380 != null)
         {
            var_380.dispose();
            var_380 = null;
         }
         if(var_530 != null)
         {
            var_530.dispose();
            var_530 = null;
         }
         if(var_197 != null)
         {
            var_197.dispose();
            var_197 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_136 = param1;
         var_642 = false;
         if(var_1205 == null)
         {
            var_1205 = param1.topLevelNodes;
         }
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1419;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_136 = param1;
         var_642 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_322.length > param1)
         {
            return var_322[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2172 = param1.limit;
         this.var_1186 = param1.favouriteRoomIds.length;
         this.var_784 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_784[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_136 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_322;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_530;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1630 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1915;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_136 = param1;
         var_642 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_322.length)
         {
            if((var_322[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_197 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_642;
      }
      
      public function set categories(param1:Array) : void
      {
         var_322 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_1917;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1916;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1419 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_136 == null)
         {
            return;
         }
         var_136.dispose();
         var_136 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_380;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_784[param1] = !!param2 ? "yes" : null;
         var_1186 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_136 as OfficialRoomsData;
      }
      
      public function get topLevelNodes() : Array
      {
         return var_1205;
      }
      
      public function get avatarId() : int
      {
         return var_1630;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_136 != null && var_136 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1915 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1917 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1525 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_197 != null)
         {
            var_197.dispose();
         }
         var_197 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_322)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_197 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1419.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1186 >= var_2172;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1916 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1525;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_197 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1914 = param1;
      }
   }
}
