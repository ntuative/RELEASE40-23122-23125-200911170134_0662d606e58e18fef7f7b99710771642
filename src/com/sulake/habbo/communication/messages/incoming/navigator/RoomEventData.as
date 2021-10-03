package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1574:String;
      
      private var var_399:int;
      
      private var var_1570:String;
      
      private var var_1569:String;
      
      private var var_1572:int;
      
      private var var_1571:String;
      
      private var var_1573:int;
      
      private var var_569:Array;
      
      private var var_976:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_569 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_976 = false;
            return;
         }
         this.var_976 = true;
         var_1572 = int(_loc2_);
         var_1570 = param1.readString();
         var_399 = int(param1.readString());
         var_1573 = param1.readInteger();
         var_1574 = param1.readString();
         var_1569 = param1.readString();
         var_1571 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_569.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1573;
      }
      
      public function get eventName() : String
      {
         return var_1574;
      }
      
      public function get eventDescription() : String
      {
         return var_1569;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1570;
      }
      
      public function get tags() : Array
      {
         return var_569;
      }
      
      public function get creationTime() : String
      {
         return var_1571;
      }
      
      public function get exists() : Boolean
      {
         return var_976;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1572;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
      
      public function get flatId() : int
      {
         return var_399;
      }
   }
}
