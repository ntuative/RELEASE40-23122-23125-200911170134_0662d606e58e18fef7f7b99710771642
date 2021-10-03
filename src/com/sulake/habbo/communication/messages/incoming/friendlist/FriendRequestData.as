package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1847:int;
      
      private var var_1846:String;
      
      private var var_1261:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1261 = param1.readInteger();
         this.var_1846 = param1.readString();
         this.var_1847 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1261;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_1847;
      }
      
      public function get requesterName() : String
      {
         return this.var_1846;
      }
   }
}
