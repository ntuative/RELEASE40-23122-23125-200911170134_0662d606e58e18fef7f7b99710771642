package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_90:Number = 0;
      
      private var var_215:int = 0;
      
      private var var_1673:int = 0;
      
      private var var_1671:Number = 0;
      
      private var var_1670:Number = 0;
      
      private var var_1674:Number = 0;
      
      private var var_1672:Number = 0;
      
      private var var_1669:Boolean = false;
      
      private var var_89:Number = 0;
      
      private var _id:int = 0;
      
      private var var_194:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_194 = [];
         super();
         _id = param1;
         var_89 = param2;
         _y = param3;
         var_90 = param4;
         var_1672 = param5;
         var_215 = param6;
         var_1673 = param7;
         var_1671 = param8;
         var_1670 = param9;
         var_1674 = param10;
         var_1669 = param11;
         var_194 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_90;
      }
      
      public function get dir() : int
      {
         return var_215;
      }
      
      public function get localZ() : Number
      {
         return var_1672;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1669;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1673;
      }
      
      public function get targetX() : Number
      {
         return var_1671;
      }
      
      public function get targetY() : Number
      {
         return var_1670;
      }
      
      public function get targetZ() : Number
      {
         return var_1674;
      }
      
      public function get x() : Number
      {
         return var_89;
      }
      
      public function get actions() : Array
      {
         return var_194.slice();
      }
   }
}
