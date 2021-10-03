package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_292:String = "WE_CHILD_RESIZED";
      
      public static const const_1163:String = "WE_CLOSE";
      
      public static const const_1180:String = "WE_DESTROY";
      
      public static const const_257:String = "WE_CHANGE";
      
      public static const const_1183:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1506:String = "WE_PARENT_RESIZE";
      
      public static const const_83:String = "WE_UPDATE";
      
      public static const const_1332:String = "WE_MAXIMIZE";
      
      public static const const_387:String = "WE_DESTROYED";
      
      public static const const_831:String = "WE_UNSELECT";
      
      public static const const_1096:String = "WE_MAXIMIZED";
      
      public static const const_1542:String = "WE_UNLOCKED";
      
      public static const const_343:String = "WE_CHILD_REMOVED";
      
      public static const const_196:String = "WE_OK";
      
      public static const const_46:String = "WE_RESIZED";
      
      public static const const_1186:String = "WE_ACTIVATE";
      
      public static const const_264:String = "WE_ENABLED";
      
      public static const const_356:String = "WE_CHILD_RELOCATED";
      
      public static const const_1144:String = "WE_CREATE";
      
      public static const const_557:String = "WE_SELECT";
      
      public static const const_152:String = "";
      
      public static const const_1402:String = "WE_LOCKED";
      
      public static const const_1441:String = "WE_PARENT_RELOCATE";
      
      public static const const_1415:String = "WE_CHILD_REMOVE";
      
      public static const const_1446:String = "WE_CHILD_RELOCATE";
      
      public static const const_1429:String = "WE_LOCK";
      
      public static const const_326:String = "WE_FOCUSED";
      
      public static const const_524:String = "WE_UNSELECTED";
      
      public static const const_867:String = "WE_DEACTIVATED";
      
      public static const const_1097:String = "WE_MINIMIZED";
      
      public static const const_1467:String = "WE_ARRANGED";
      
      public static const const_1495:String = "WE_UNLOCK";
      
      public static const const_1433:String = "WE_ATTACH";
      
      public static const const_1329:String = "WE_OPEN";
      
      public static const const_1302:String = "WE_RESTORE";
      
      public static const const_1509:String = "WE_PARENT_RELOCATED";
      
      public static const const_1194:String = "WE_RELOCATE";
      
      public static const const_1455:String = "WE_CHILD_RESIZE";
      
      public static const const_1383:String = "WE_ARRANGE";
      
      public static const const_1315:String = "WE_OPENED";
      
      public static const const_1242:String = "WE_CLOSED";
      
      public static const const_1439:String = "WE_DETACHED";
      
      public static const const_1543:String = "WE_UPDATED";
      
      public static const const_1232:String = "WE_UNFOCUSED";
      
      public static const const_434:String = "WE_RELOCATED";
      
      public static const const_1136:String = "WE_DEACTIVATE";
      
      public static const const_211:String = "WE_DISABLED";
      
      public static const const_588:String = "WE_CANCEL";
      
      public static const const_576:String = "WE_ENABLE";
      
      public static const const_1263:String = "WE_ACTIVATED";
      
      public static const const_1143:String = "WE_FOCUS";
      
      public static const const_1412:String = "WE_DETACH";
      
      public static const const_1113:String = "WE_RESTORED";
      
      public static const const_1201:String = "WE_UNFOCUS";
      
      public static const const_53:String = "WE_SELECTED";
      
      public static const const_1340:String = "WE_PARENT_RESIZED";
      
      public static const const_1245:String = "WE_CREATED";
      
      public static const const_1477:String = "WE_ATTACHED";
      
      public static const const_1152:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1500:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1281:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1500 = param3;
         var_1281 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1281;
      }
      
      public function get related() : IWindow
      {
         return var_1500;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1281 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
