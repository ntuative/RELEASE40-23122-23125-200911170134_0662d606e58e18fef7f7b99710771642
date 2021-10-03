package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_120:String = "RWPUE_VOTE_RESULT";
      
      public static const const_110:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1183:int;
      
      private var var_986:String;
      
      private var var_598:Array;
      
      private var var_954:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_986 = param2;
         var_954 = param3;
         var_598 = param4;
         if(var_598 == null)
         {
            var_598 = [];
         }
         var_1183 = param5;
      }
      
      public function get votes() : Array
      {
         return var_598.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1183;
      }
      
      public function get question() : String
      {
         return var_986;
      }
      
      public function get choices() : Array
      {
         return var_954.slice();
      }
   }
}
