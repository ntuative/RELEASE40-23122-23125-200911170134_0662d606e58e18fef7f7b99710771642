package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1314:GarbageMonitor = null;
      
      private var var_1059:int = 0;
      
      private var var_1114:Boolean = false;
      
      private var var_1584:String = "";
      
      private var var_1315:String = "";
      
      private var var_312:Number = 0;
      
      private var var_1062:int = 10;
      
      private var var_2151:Array;
      
      private var var_572:int = 0;
      
      private var var_1058:int = 60;
      
      private var var_875:int = 0;
      
      private var var_876:int = 0;
      
      private var var_1732:String = "";
      
      private var var_1585:Number = 0;
      
      private var var_1060:int = 1000;
      
      private var var_1587:Boolean = true;
      
      private var var_1586:Number = 0.15;
      
      private var var_179:IHabboConfigurationManager = null;
      
      private var var_1588:String = "";
      
      private var var_1061:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2151 = [];
         super();
         var_1315 = Capabilities.version;
         var_1584 = Capabilities.os;
         var_1114 = Capabilities.isDebugger;
         var_1588 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1314 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1059 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1314.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1314.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_312;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1058 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1315;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_876;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1060)
         {
            ++var_875;
            _loc3_ = true;
         }
         else
         {
            ++var_572;
            if(var_572 <= 1)
            {
               var_312 = param1;
            }
            else
            {
               _loc4_ = Number(var_572);
               var_312 = var_312 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1059 > var_1058 * 1000 && var_1061 < var_1062)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_312);
            _loc5_ = true;
            if(var_1587 && var_1061 > 0)
            {
               _loc6_ = differenceInPercents(var_1585,var_312);
               if(_loc6_ < var_1586)
               {
                  _loc5_ = false;
               }
            }
            var_1059 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1585 = var_312;
               if(sendReport())
               {
                  ++var_1061;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1062 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1060 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1588,var_1315,var_1584,var_1732,var_1114,_loc4_,_loc3_,var_876,var_312,var_875);
            _connection.send(_loc1_);
            var_876 = 0;
            var_312 = 0;
            var_572 = 0;
            var_875 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_179 = param1;
         var_1058 = int(var_179.getKey("performancetest.interval","60"));
         var_1060 = int(var_179.getKey("performancetest.slowupdatelimit","1000"));
         var_1062 = int(var_179.getKey("performancetest.reportlimit","10"));
         var_1586 = Number(var_179.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1587 = Boolean(int(var_179.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
