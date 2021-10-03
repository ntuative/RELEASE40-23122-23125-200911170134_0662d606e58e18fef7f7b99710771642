package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_306:Timer;
      
      protected var var_861:String;
      
      protected var var_860:uint;
      
      protected var var_1030:Point;
      
      protected var var_238:IToolTipWindow;
      
      protected var var_1031:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1030 = new Point();
         var_1031 = new Point(20,20);
         var_860 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_306 != null)
         {
            var_306.stop();
            var_306.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_306 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1030);
            if(var_238 != null && true)
            {
               var_238.x = param1 + var_1031.x;
               var_238.y = param2 + var_1031.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_306 != null)
         {
            var_306.reset();
         }
         if(_window && true)
         {
            if(var_238 == null || false)
            {
               var_238 = _window.context.create("undefined::ToolTip",var_861,WindowType.WINDOW_TYPE_TOOLTIP,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_238.x = _loc2_.x + var_1030.x + var_1031.x;
            var_238.y = _loc2_.y + var_1030.y + var_1031.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_861 = IInteractiveWindow(param1).toolTipCaption;
               var_860 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_861 = param1.caption;
               var_860 = 500;
            }
            _mouse.x = var_122.mouseX;
            _mouse.y = var_122.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1030);
            if(var_861 != null && var_861 != "")
            {
               if(var_306 == null)
               {
                  var_306 = new Timer(var_860,1);
                  var_306.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_306.reset();
               var_306.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_238 != null && true)
         {
            var_238.destroy();
            var_238 = null;
         }
      }
   }
}
