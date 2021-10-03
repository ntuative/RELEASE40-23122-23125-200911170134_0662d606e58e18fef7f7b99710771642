package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_573:int = 6;
      
      public static const const_190:int = 5;
      
      public static const const_523:int = 2;
      
      public static const const_306:int = 9;
      
      public static const const_235:int = 4;
      
      public static const const_219:int = 2;
      
      public static const const_620:int = 4;
      
      public static const const_191:int = 8;
      
      public static const const_506:int = 7;
      
      public static const const_245:int = 3;
      
      public static const const_307:int = 1;
      
      public static const const_204:int = 5;
      
      public static const const_424:int = 12;
      
      public static const const_302:int = 1;
      
      public static const const_450:int = 11;
      
      public static const const_536:int = 3;
      
      public static const const_1481:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_376:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_376 = new Array();
         var_376.push(new Tab(_navigator,const_307,const_424,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_426));
         var_376.push(new Tab(_navigator,const_219,const_302,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_426));
         var_376.push(new Tab(_navigator,const_235,const_450,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_487));
         var_376.push(new Tab(_navigator,const_245,const_190,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_426));
         var_376.push(new Tab(_navigator,const_204,const_191,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_552));
         setSelectedTab(const_307);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_376)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_376)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_376)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_235;
      }
      
      public function get tabs() : Array
      {
         return var_376;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
