package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.events.RoomObjectRoomAdEvent;
   import com.sulake.habbo.room.messages.RoomObjectDataUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectItemDataUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.logic.MovingObjectLogic;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import com.sulake.room.utils.XMLValidator;
   import flash.events.MouseEvent;
   
   public class FurnitureLogic extends MovingObjectLogic
   {
       
      
      private var var_917:Number = 0;
      
      private var var_606:Boolean = false;
      
      private var var_1757:Number = 0;
      
      private var var_1758:Number = 0;
      
      private var var_1123:Number = 0;
      
      private var var_918:Number = 0;
      
      private var var_919:Number = 0;
      
      private var var_230:Array;
      
      public function FurnitureLogic()
      {
         var_230 = [];
         super();
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc2_:IRoomObjectModelController = object.getModelController();
         var _loc3_:RoomObjectDataUpdateMessage = param1 as RoomObjectDataUpdateMessage;
         if(_loc3_ != null)
         {
            object.setState(_loc3_.state,0);
            if(_loc2_ != null)
            {
               _loc2_.setString(RoomObjectVariableEnum.const_127,_loc3_.data);
            }
            return;
         }
         var _loc4_:RoomObjectItemDataUpdateMessage = param1 as RoomObjectItemDataUpdateMessage;
         if(_loc4_ != null)
         {
            if(_loc2_ != null)
            {
               _loc2_.setString(RoomObjectVariableEnum.const_809,_loc4_.itemData);
            }
            return;
         }
         var_606 = false;
         super.processUpdateMessage(param1);
      }
      
      override public function initialize(param1:XML) : void
      {
         var _loc7_:* = null;
         var _loc8_:int = 0;
         if(param1 == null)
         {
            return;
         }
         var_918 = 0;
         var_919 = 0;
         var_917 = 0;
         var_230 = [];
         var _loc2_:XMLList = param1.model.dimensions;
         if(_loc2_.length() == 0)
         {
            return;
         }
         var _loc3_:XMLList = _loc2_.@x;
         if(_loc3_.length() == 1)
         {
            var_918 = Number(_loc3_);
         }
         _loc3_ = _loc2_.@y;
         if(_loc3_.length() == 1)
         {
            var_919 = Number(_loc3_);
         }
         _loc3_ = _loc2_.@z;
         if(_loc3_.length() == 1)
         {
            var_917 = Number(_loc3_);
         }
         var_1757 = var_918 / 2;
         var_1758 = var_919 / 2;
         _loc3_ = _loc2_.@centerZ;
         if(_loc3_.length() == 1)
         {
            var_1123 = Number(_loc3_);
         }
         else
         {
            var_1123 = var_917 / 2;
         }
         var _loc4_:XMLList = param1.model.directions.direction;
         var _loc5_:* = ["id"];
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.length())
         {
            _loc7_ = _loc4_[_loc6_];
            if(XMLValidator.checkRequiredAttributes(_loc7_,_loc5_))
            {
               _loc8_ = parseInt(_loc7_.@id);
               var_230.push(_loc8_);
            }
            _loc6_++;
         }
         var_230.sort(Array.NUMERIC);
         if(object == null || object.getModelController() == null)
         {
            return;
         }
         object.getModelController().setNumber(RoomObjectVariableEnum.const_275,var_918,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_441,var_919,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_621,var_917,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_1167,var_1757,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_1176,var_1758,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_958,var_1123,true);
         object.getModelController().setNumberArray(RoomObjectVariableEnum.const_650,var_230,true);
         object.getModelController().setNumber(RoomObjectVariableEnum.const_157,1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         var_230 = null;
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(object == null)
         {
            return;
         }
         var _loc3_:* = null;
         switch(param1.type)
         {
            case MouseEvent.ROLL_OVER:
               if(!var_606)
               {
                  _loc3_ = object.getModel() as IRoomObjectModelController;
                  if(_loc3_ == null)
                  {
                     return;
                  }
                  _loc9_ = _loc3_.getString(RoomObjectVariableEnum.const_179);
                  if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
                  {
                     eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_276,_loc6_,_loc7_));
                  }
                  var_606 = true;
               }
               break;
            case MouseEvent.ROLL_OUT:
               if(var_606)
               {
                  _loc3_ = object.getModel() as IRoomObjectModelController;
                  if(_loc3_ == null)
                  {
                     return;
                  }
                  _loc9_ = _loc3_.getString(RoomObjectVariableEnum.const_179);
                  if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
                  {
                     eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_308,_loc6_,_loc7_));
                  }
                  var_606 = false;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               _loc6_ = object.getId();
               _loc7_ = object.getType();
               _loc3_ = object.getModel() as IRoomObjectModelController;
               if(_loc3_ == null)
               {
                  return;
               }
               _loc9_ = _loc3_.getString(RoomObjectVariableEnum.const_179);
               if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_393,_loc6_,_loc7_));
               }
            case MouseEvent.CLICK:
               _loc6_ = object.getId();
               _loc7_ = object.getType();
               if(eventDispatcher != null)
               {
                  _loc8_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_213,_loc6_,_loc7_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc8_);
               }
               _loc3_ = object.getModel() as IRoomObjectModelController;
               if(_loc3_ == null)
               {
                  return;
               }
               _loc9_ = _loc3_.getString(RoomObjectVariableEnum.const_179);
               if(eventDispatcher != null && _loc9_ != null && _loc9_.indexOf("http") == 0)
               {
                  eventDispatcher.dispatchEvent(new RoomObjectRoomAdEvent(RoomObjectRoomAdEvent.const_225,_loc6_,_loc7_));
               }
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc6_ = object.getId();
               _loc7_ = object.getType();
               if(eventDispatcher != null)
               {
                  _loc8_ = new RoomObjectMouseEvent(RoomObjectMouseEvent.const_375,_loc6_,_loc7_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
                  eventDispatcher.dispatchEvent(_loc8_);
               }
         }
      }
   }
}
