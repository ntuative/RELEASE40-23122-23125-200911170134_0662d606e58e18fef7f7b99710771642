package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1639:int;
      
      private var var_1986:String;
      
      private var var_1987:int;
      
      private var var_1988:int;
      
      private var var_671:Boolean;
      
      private var var_1581:Boolean;
      
      private var var_399:int;
      
      private var var_1087:String;
      
      private var var_1575:int;
      
      private var var_1158:int;
      
      private var _ownerName:String;
      
      private var var_607:String;
      
      private var var_1985:int;
      
      private var var_1989:RoomThumbnailData;
      
      private var var_1579:Boolean;
      
      private var var_569:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_569 = new Array();
         super();
         var_399 = param1.readInteger();
         var_671 = param1.readBoolean();
         var_607 = param1.readString();
         _ownerName = param1.readString();
         var_1575 = param1.readInteger();
         var_1639 = param1.readInteger();
         var_1985 = param1.readInteger();
         var_1087 = param1.readString();
         var_1987 = param1.readInteger();
         var_1579 = param1.readBoolean();
         var_1988 = param1.readInteger();
         var_1158 = param1.readInteger();
         var_1986 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_569.push(_loc4_);
            _loc3_++;
         }
         var_1989 = new RoomThumbnailData(param1);
         var_1581 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1985;
      }
      
      public function get roomName() : String
      {
         return var_607;
      }
      
      public function get userCount() : int
      {
         return var_1639;
      }
      
      public function get score() : int
      {
         return var_1988;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1986;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1579;
      }
      
      public function get tags() : Array
      {
         return var_569;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1581;
      }
      
      public function get event() : Boolean
      {
         return var_671;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_569 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1158;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1987;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1989;
      }
      
      public function get doorMode() : int
      {
         return var_1575;
      }
      
      public function get flatId() : int
      {
         return var_399;
      }
      
      public function get description() : String
      {
         return var_1087;
      }
   }
}
