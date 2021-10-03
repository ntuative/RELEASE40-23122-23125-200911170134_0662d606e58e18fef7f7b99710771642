package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1159:String = "WN_CREATED";
      
      public static const const_842:String = "WN_DISABLE";
      
      public static const const_970:String = "WN_DEACTIVATED";
      
      public static const const_811:String = "WN_OPENED";
      
      public static const const_916:String = "WN_CLOSED";
      
      public static const const_894:String = "WN_DESTROY";
      
      public static const const_1394:String = "WN_ARRANGED";
      
      public static const const_390:String = "WN_PARENT_RESIZED";
      
      public static const const_883:String = "WN_ENABLE";
      
      public static const const_875:String = "WN_RELOCATE";
      
      public static const const_778:String = "WN_FOCUS";
      
      public static const const_818:String = "WN_PARENT_RELOCATED";
      
      public static const const_352:String = "WN_PARAM_UPDATED";
      
      public static const const_678:String = "WN_PARENT_ACTIVATED";
      
      public static const const_223:String = "WN_RESIZED";
      
      public static const const_961:String = "WN_CLOSE";
      
      public static const const_957:String = "WN_PARENT_REMOVED";
      
      public static const const_239:String = "WN_CHILD_RELOCATED";
      
      public static const const_612:String = "WN_ENABLED";
      
      public static const const_217:String = "WN_CHILD_RESIZED";
      
      public static const const_983:String = "WN_MINIMIZED";
      
      public static const const_583:String = "WN_DISABLED";
      
      public static const const_214:String = "WN_CHILD_ACTIVATED";
      
      public static const const_409:String = "WN_STATE_UPDATED";
      
      public static const const_553:String = "WN_UNSELECTED";
      
      public static const const_421:String = "WN_STYLE_UPDATED";
      
      public static const const_1497:String = "WN_UPDATE";
      
      public static const const_436:String = "WN_PARENT_ADDED";
      
      public static const const_625:String = "WN_RESIZE";
      
      public static const const_682:String = "WN_CHILD_REMOVED";
      
      public static const const_1507:String = "";
      
      public static const const_960:String = "WN_RESTORED";
      
      public static const const_285:String = "WN_SELECTED";
      
      public static const const_775:String = "WN_MINIMIZE";
      
      public static const const_886:String = "WN_FOCUSED";
      
      public static const const_1170:String = "WN_LOCK";
      
      public static const const_271:String = "WN_CHILD_ADDED";
      
      public static const const_838:String = "WN_UNFOCUSED";
      
      public static const const_373:String = "WN_RELOCATED";
      
      public static const const_871:String = "WN_DEACTIVATE";
      
      public static const const_1131:String = "WN_CRETAE";
      
      public static const const_863:String = "WN_RESTORE";
      
      public static const const_272:String = "WN_ACTVATED";
      
      public static const const_1168:String = "WN_LOCKED";
      
      public static const const_443:String = "WN_SELECT";
      
      public static const const_869:String = "WN_MAXIMIZE";
      
      public static const const_780:String = "WN_OPEN";
      
      public static const const_663:String = "WN_UNSELECT";
      
      public static const const_1519:String = "WN_ARRANGE";
      
      public static const const_1326:String = "WN_UNLOCKED";
      
      public static const const_1537:String = "WN_UPDATED";
      
      public static const const_876:String = "WN_ACTIVATE";
      
      public static const const_1161:String = "WN_UNLOCK";
      
      public static const const_915:String = "WN_MAXIMIZED";
      
      public static const const_899:String = "WN_DESTROYED";
      
      public static const const_800:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1500,cancelable);
      }
   }
}
