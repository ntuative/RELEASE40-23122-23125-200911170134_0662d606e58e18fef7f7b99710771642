package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.core.window.events.WindowNotifyEvent;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ScrollbarController extends InteractiveController implements IScrollbarWindow
   {
      
      private static const const_1014:String = "increment";
      
      private static const const_473:String = "slider_bar";
      
      private static const const_1015:String = "decrement";
      
      private static const const_726:String = "slider_track";
       
      
      private var _horizontal:Boolean;
      
      protected var var_35:IScrollableWindow;
      
      private var var_500:Boolean = false;
      
      protected var var_1497:Number = 0.1;
      
      private var var_713:String;
      
      protected var _offset:Number = 0;
      
      public function ScrollbarController(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:WindowContext, param7:Rectangle, param8:IWindow, param9:Function, param10:Array = null, param11:Array = null, param12:uint = 0, param13:IScrollableWindow = null)
      {
         var _loc15_:* = null;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12);
         var_35 = param13;
         _horizontal = param3 == WindowType.const_342;
         var _loc14_:Array = new Array();
         groupChildrenWithTag(WindowController.INTERNAL_CHILD_TAG,_loc14_,true);
         for each(_loc15_ in _loc14_)
         {
            _loc15_.procedure = scrollButtonEventProc;
         }
         updateLiftSizeAndPosition();
      }
      
      override public function update(param1:WindowController, param2:Event) : Boolean
      {
         var _loc3_:IWindow = param1 as IWindow;
         if(_loc3_ != null)
         {
            switch(_loc3_.name)
            {
               case ScrollbarController.const_473:
                  if(param2.type == WindowNotifyEvent.const_239)
                  {
                     if(!var_500)
                     {
                        if(_horizontal)
                        {
                           setScrollPosition(ScrollbarLiftController(param1).offsetX);
                        }
                        else
                        {
                           setScrollPosition(ScrollbarLiftController(param1).offsetY);
                        }
                     }
                  }
            }
         }
         var _loc4_:Boolean = super.update(param1,param2);
         if(param2.type == WindowNotifyEvent.const_436)
         {
            if(var_35 == null)
            {
               resolveScrollTarget();
            }
         }
         return _loc4_;
      }
      
      override public function enable() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         if(super.enable())
         {
            _loc1_ = new Array();
            groupChildrenWithTag(WindowController.INTERNAL_CHILD_TAG,_loc1_,true);
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               IWindow(_loc1_[_loc2_]).enable();
               _loc2_++;
            }
            return true;
         }
         return false;
      }
      
      protected function get track() : WindowController
      {
         return getChildByName(ScrollbarController.const_726) as WindowController;
      }
      
      private function nullEventProc(param1:WindowEvent, param2:IWindow) : void
      {
      }
      
      public function set scrollV(param1:Number) : void
      {
         if(!_horizontal)
         {
            setScrollPosition(param1);
            updateLiftSizeAndPosition();
         }
      }
      
      public function set scrollable(param1:IScrollableWindow) : void
      {
         if(var_35 != null && true)
         {
            IWindow(var_35).removeEventListener(WindowEvent.const_46,onScrollableResized);
         }
         var_35 = param1;
         if(var_35 != null && true)
         {
            IWindow(var_35).addEventListener(WindowEvent.const_46,onScrollableResized);
            updateLiftSizeAndPosition();
         }
      }
      
      protected function get lift() : WindowController
      {
         return track.getChildByName(ScrollbarController.const_473) as WindowController;
      }
      
      protected function setScrollPosition(param1:Number) : void
      {
         if(var_35 == null)
         {
            if(!resolveScrollTarget())
            {
               return;
            }
         }
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > 1)
         {
            param1 = 1;
         }
         if(_horizontal)
         {
            _offset = param1;
            var_35.scrollH = _offset;
         }
         else
         {
            _offset = param1;
            var_35.scrollV = _offset;
         }
      }
      
      override public function dispose() : void
      {
         scrollable = null;
         super.dispose();
      }
      
      public function get scrollH() : Number
      {
         return !!_horizontal ? Number(_offset) : Number(0);
      }
      
      public function get horizontal() : Boolean
      {
         return _horizontal;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = param1.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_ = param1[_loc4_] as PropertyStruct;
            if(_loc3_.key == "scrollable")
            {
               var_713 = _loc3_.value as String;
            }
            _loc4_++;
         }
         super.properties = param1;
      }
      
      override public function disable() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         if(super.disable())
         {
            _loc1_ = new Array();
            groupChildrenWithTag(WindowController.INTERNAL_CHILD_TAG,_loc1_,true);
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               IWindow(_loc1_[_loc2_]).disable();
               _loc2_++;
            }
            return true;
         }
         return false;
      }
      
      public function get scrollV() : Number
      {
         return !!_horizontal ? 0 : Number(_offset);
      }
      
      private function resolveScrollTarget() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         if(var_35 != null)
         {
            if(true)
            {
               return true;
            }
         }
         if(var_713 != null)
         {
            _loc1_ = findParentByName(var_713) as IScrollableWindow;
            if(_loc1_ == null && var_23 is IWindowContainer)
            {
               _loc1_ = IWindowContainer(var_23).findChildByName(var_713) as IScrollableWindow;
               if(_loc1_)
               {
                  scrollable = _loc1_;
                  return true;
               }
            }
         }
         if(var_23 is IScrollableWindow)
         {
            scrollable = IScrollableWindow(var_23);
            return true;
         }
         if(var_23 is IWindowContainer && !(var_23 is IDesktopWindow))
         {
            _loc2_ = uint(IWindowContainer(var_23).numChildren);
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc3_ = IWindowContainer(var_23).getChildAt(_loc4_) as IScrollableWindow;
               if(_loc3_)
               {
                  scrollable = _loc3_;
                  return true;
               }
               _loc4_++;
            }
         }
         return false;
      }
      
      public function get scrollable() : IScrollableWindow
      {
         return var_35;
      }
      
      private function scrollButtonEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc3_:Boolean = false;
         if(param1.type == WindowMouseEvent.const_42)
         {
            if(param2.name == ScrollbarController.const_1014)
            {
               if(var_35)
               {
                  var_500 = true;
                  if(_horizontal)
                  {
                     scrollH += 0 / 0;
                  }
                  else
                  {
                     scrollV += 0 / 0;
                  }
                  var_500 = false;
                  _loc3_ = true;
               }
            }
            else if(param2.name == ScrollbarController.const_1015)
            {
               if(var_35)
               {
                  var_500 = true;
                  if(_horizontal)
                  {
                     scrollH -= 0 / 0;
                  }
                  else
                  {
                     scrollV -= 0 / 0;
                  }
                  var_500 = false;
                  _loc3_ = true;
               }
            }
            else if(param2.name == ScrollbarController.const_726)
            {
               _loc4_ = new Point();
               param2.getGlobalPosition(_loc4_);
               _loc4_.x = _context.getDesktopWindow().mouseX - _loc4_.x;
               _loc4_.y = _context.getDesktopWindow().mouseY - _loc4_.y;
               _loc5_ = WindowController(param2).getChildByName(ScrollbarController.const_473).rectangle;
               if(_horizontal)
               {
                  if(_loc4_.x < _loc5_.x)
                  {
                     scrollH -= (var_35.visibleRegion.width - 0) / 0;
                  }
                  else if(_loc4_.x > _loc5_.right)
                  {
                     scrollH += (var_35.visibleRegion.width - 0) / 0;
                  }
               }
               else if(_loc4_.y < _loc5_.y)
               {
                  scrollV -= (var_35.visibleRegion.height - 0) / 0;
               }
               else if(_loc4_.y > _loc5_.bottom)
               {
                  scrollV += (var_35.visibleRegion.height - 0) / 0;
               }
               _loc3_ = true;
            }
         }
         if(param1.type == WindowMouseEvent.const_836)
         {
            if(WindowMouseEvent(param1).delta > 0)
            {
               if(_horizontal)
               {
                  scrollH -= var_1497;
               }
               else
               {
                  scrollV -= var_1497;
               }
            }
            else if(_horizontal)
            {
               scrollH += var_1497;
            }
            else
            {
               scrollV += var_1497;
            }
            _loc3_ = true;
         }
         if(_loc3_)
         {
            updateLiftSizeAndPosition();
         }
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         var _loc2_:String = "";
         if(var_35 is IWindow)
         {
            _loc2_ = IWindow(var_35).name;
         }
         else if(var_713 != null)
         {
            _loc2_ = var_713;
         }
         _loc1_.push(new PropertyStruct("scrollable",_loc2_,"String",_loc2_ != ""));
         return _loc1_;
      }
      
      public function get vertical() : Boolean
      {
         return !_horizontal;
      }
      
      private function updateLiftSizeAndPosition() : void
      {
         var _loc1_:* = NaN;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         if(var_35 == null)
         {
            if(_disposed || !resolveScrollTarget())
            {
               return;
            }
         }
         var _loc2_:WindowController = track;
         _loc3_ = lift;
         if(_loc3_ != null)
         {
            if(_horizontal)
            {
               _loc1_ = Number(var_35.visibleRegion.width / var_35.scrollableRegion.width);
               if(_loc1_ > 1)
               {
                  _loc1_ = 1;
               }
               _loc4_ = _loc1_ * _loc2_.width;
               _loc3_.width = _loc4_;
               _loc3_.x = 0 * (_loc2_.width - _loc4_);
            }
            else
            {
               _loc1_ = Number(var_35.visibleRegion.height / var_35.scrollableRegion.height);
               if(_loc1_ > 1)
               {
                  _loc1_ = 1;
               }
               _loc4_ = _loc1_ * _loc2_.height;
               _loc3_.height = _loc4_;
               _loc3_.y = 0 * (_loc2_.height - _loc4_);
            }
         }
         if(_loc1_ == 1)
         {
            disable();
         }
         else
         {
            enable();
         }
      }
      
      private function onScrollableResized(param1:Event) : void
      {
         updateLiftSizeAndPosition();
         setScrollPosition(_offset);
      }
      
      public function set scrollH(param1:Number) : void
      {
         if(_horizontal)
         {
            setScrollPosition(param1);
            updateLiftSizeAndPosition();
         }
      }
   }
}
