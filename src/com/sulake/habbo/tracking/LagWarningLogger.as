package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_985:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1104:Boolean = true;
      
      private var var_1061:int = 0;
      
      private var var_788:int = 0;
      
      private var var_1059:int = 0;
      
      private var var_787:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1062:int = 15;
      
      private var var_179:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1058:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1059 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1104)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_788,var_787);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1061;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_788 == 0 && var_787 == 0;
      }
      
      private function resetLog() : void
      {
         var_788 = 0;
         var_787 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1104)
         {
            return;
         }
         if(getTimer() - var_1059 > var_1058 * 1000 && var_1061 < var_1062)
         {
            var_1059 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_179 = param1;
         var_1058 = int(var_179.getKey("lagwarninglog.interval","60"));
         var_1062 = int(var_179.getKey("lagwarninglog.reportlimit","15"));
         var_1104 = Boolean(int(var_179.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_787 += 1;
            case const_985:
               var_788 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
