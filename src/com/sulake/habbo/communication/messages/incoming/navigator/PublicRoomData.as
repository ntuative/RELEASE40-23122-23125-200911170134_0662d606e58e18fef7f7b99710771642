package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2064:int;
      
      private var var_2065:String;
      
      private var var_2003:int;
      
      private var _disposed:Boolean;
      
      private var var_2063:int;
      
      private var var_2059:String;
      
      private var var_1168:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_2059 = param1.readString();
         var_2064 = param1.readInteger();
         var_2003 = param1.readInteger();
         var_2065 = param1.readString();
         var_2063 = param1.readInteger();
         var_1168 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2063;
      }
      
      public function get worldId() : int
      {
         return var_2003;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_2059;
      }
      
      public function get unitPort() : int
      {
         return var_2064;
      }
      
      public function get castLibs() : String
      {
         return var_2065;
      }
      
      public function get nodeId() : int
      {
         return var_1168;
      }
   }
}
