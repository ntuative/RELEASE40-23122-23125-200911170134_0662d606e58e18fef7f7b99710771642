package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_192:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1724:Boolean = false;
      
      private var var_1726:int = 0;
      
      private var var_1723:int = 0;
      
      private var var_1725:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_192,param5,param6);
         var_1725 = param1;
         var_1723 = param2;
         var_1726 = param3;
         var_1724 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1726;
      }
      
      public function get periodsLeft() : int
      {
         return var_1723;
      }
      
      public function get daysLeft() : int
      {
         return var_1725;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1724;
      }
   }
}
