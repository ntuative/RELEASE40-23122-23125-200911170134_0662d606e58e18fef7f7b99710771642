package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_708:int = -1;
      
      public static const const_854:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1860:int = -1;
      
      private var var_89:int = 0;
      
      private var var_1161:int = 1;
      
      private var var_769:int = 1;
      
      private var var_1862:Boolean = false;
      
      private var var_1861:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_89 = param2;
         _y = param3;
         var_1862 = param5;
         if(param4 < 0)
         {
            param4 = const_708;
         }
         var_769 = param4;
         var_1161 = param4;
         if(param6 >= 0)
         {
            var_1860 = param6;
            var_1861 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_769 > 0 && param1 > var_769)
         {
            param1 = var_769;
         }
         var_1161 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_769;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1861;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_769 < 0)
         {
            return const_708;
         }
         return var_1161;
      }
      
      public function get activeSequence() : int
      {
         return var_1860;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1862;
      }
      
      public function get x() : int
      {
         return var_89;
      }
   }
}
