package com.sulake.habbo.communication
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.connection.IConnectionStateListener;
   import com.sulake.core.communication.enum.ConnectionType;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.CoreComponent;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.communication.enum.HabboConnectionType;
   import com.sulake.habbo.communication.enum.HabboProtocolType;
   import com.sulake.habbo.communication.protocol.WedgieProtocol;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.configuration.enum.HabboConfigurationEvent;
   import com.sulake.habbo.tracking.HabboErrorVariableEnum;
   import com.sulake.iid.IIDCoreCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboCommunicationManager extends Component implements IHabboCommunicationManager, IConnectionStateListener
   {
       
      
      private var var_601:int = 0;
      
      private var var_45:String = "";
      
      private var var_370:int = -1;
      
      private var var_191:Array;
      
      private var var_1131:Timer;
      
      private var var_1805:Boolean = false;
      
      private var var_613:ICoreCommunicationManager;
      
      private var _habboConfiguration:IHabboConfigurationManager;
      
      private var var_923:IMessageConfiguration;
      
      private var _connection:IConnection;
      
      public function HabboCommunicationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_923 = new HabboMessages();
         var_191 = [];
         var_1131 = new Timer(100,1);
         super(param1,param2,param3);
         this.queueInterface(new IIDCoreCommunicationManager(),onCoreCommunicationManagerInit);
         this.queueInterface(new IIDHabboConfigurationManager(),onHabboConfigurationInit);
      }
      
      public function get port() : int
      {
         if(var_370 < 0 || var_370 >= var_191.length)
         {
            return 0;
         }
         return var_191[var_370];
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] IO Error: " + param1.text);
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         ErrorReportStorage.addDebugData("Communication IO Error","IOError " + param1.type + " on connect: " + param1.text + ". Port was " + var_191[var_370]);
         tryNextPort();
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] Security Error: " + param1.text);
         ErrorReportStorage.addDebugData("Communication Security Error","SecurityError on connect: " + param1.text + ". Port was " + var_191[var_370]);
         tryNextPort();
      }
      
      private function onConfigurationReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         Logger.log("Habbo Communication Manager: init based on configuration: " + _habboConfiguration);
         if(_habboConfiguration != null)
         {
            var_191 = [];
            var_45 = _habboConfiguration.getKey("connection.info.host","fused37-public-proxy-1.hotel.varoke.net");
            _loc2_ = _habboConfiguration.getKey("connection.info.port","25001");
            _loc3_ = _loc2_.split(",");
            for each(_loc4_ in _loc3_)
            {
               var_191.push(parseInt(_loc4_.replace(" ","")));
            }
            Logger.log("Connection Host: " + var_45);
            Logger.log("Connection Ports: " + var_191);
            Logger.log("Habbo Connection Info:" + _connection);
         }
      }
      
      public function set mode(param1:int) : void
      {
         var_601 = param1;
      }
      
      private function onTryNextPort(param1:TimerEvent) : void
      {
         var_1131.stop();
         nextPort();
      }
      
      private function nextPort() : void
      {
         var _loc1_:* = null;
         ++var_370;
         if(var_370 >= var_191.length)
         {
            if(var_1805)
            {
               return;
            }
            var_1805 = true;
            _loc1_ = this.context as CoreComponent;
            if(_loc1_ != null)
            {
               _loc1_.error("Connection failed to host " + var_45 + " ports " + var_191,true,CoreComponent.const_1296);
               return;
            }
            throw new Error("Connection failed to host " + var_45 + " ports " + var_191);
         }
         if(var_370 < var_191.length)
         {
            _connection.init(var_45,var_191[var_370]);
         }
      }
      
      public function initConnection(param1:String) : void
      {
         switch(param1)
         {
            case HabboConnectionType.const_230:
               if(_habboConfiguration == null)
               {
                  Logger.log("Configuration not ready");
                  return;
               }
               if(_connection == null)
               {
                  Logger.log("Connection not ready");
                  return;
               }
               nextPort();
               break;
            default:
               Logger.log("Unknown Habbo Connection Type: " + param1);
         }
      }
      
      public function messageReceived(param1:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1257,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1111,param1);
      }
      
      public function get mode() : int
      {
         return var_601;
      }
      
      private function onCoreCommunicationManagerInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         Logger.log("Habbo Communication Manager: Core Communication Manager found:: " + [param1,param2]);
         if(param2 != null)
         {
            var_613 = param2 as ICoreCommunicationManager;
            var_613.connectionStateListener = this;
            var_613.registerProtocolType(HabboProtocolType.const_910,WedgieProtocol);
            _connection = var_613.createConnection(HabboConnectionType.const_230,ConnectionType.const_861);
            _loc3_ = var_613.getProtocolInstanceOfType(HabboProtocolType.const_910);
            _connection.registerMessageClasses(var_923);
            _connection.protocol = _loc3_;
            _connection.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
            _connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
         }
      }
      
      public function addHabboConnectionMessageEvent(param1:IMessageEvent) : void
      {
         return var_613.addConnectionMessageEvent(HabboConnectionType.const_230,param1);
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            _habboConfiguration = param2 as IHabboConfigurationManager;
            (_habboConfiguration as Component).events.addEventListener(HabboConfigurationEvent.INIT,onConfigurationReady);
         }
      }
      
      public function habboWebLogin(param1:String, param2:String) : IHabboWebLogin
      {
         var _loc3_:String = "";
         _loc3_ = _habboConfiguration.getKey("url.prefix",_loc3_);
         _loc3_ = _loc3_.replace("http://","");
         _loc3_ = _loc3_.replace("https://","");
         return new HabboWebLogin(param1,param2,_loc3_);
      }
      
      private function tryNextPort() : void
      {
         var_1131.addEventListener(TimerEvent.TIMER,onTryNextPort);
         var_1131.start();
      }
      
      public function getHabboMainConnection(param1:Function) : IConnection
      {
         return var_613.queueConnection(HabboConnectionType.const_230,param1);
      }
      
      public function connectionInit(param1:String, param2:int) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1275,param1);
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1234,String(param2));
      }
      
      public function messageSent(param1:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1272,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1206,param1);
      }
   }
}
