package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1343:int;
      
      private var var_1342:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1343;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1343 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1343 = this.var_1343;
         _loc1_.var_1342 = this.var_1342;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1342 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1342;
      }
   }
}
