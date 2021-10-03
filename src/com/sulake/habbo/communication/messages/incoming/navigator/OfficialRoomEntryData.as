package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_920:int = 4;
      
      public static const TYPE_PUBLIC_SPACE:int = 3;
      
      public static const const_606:int = 2;
      
      public static const const_823:int = 1;
       
      
      private var var_1706:String;
      
      private var _disposed:Boolean;
      
      private var var_1639:int;
      
      private var var_1708:Boolean;
      
      private var var_810:String;
      
      private var var_736:PublicRoomData;
      
      private var _index:int;
      
      private var var_1707:String;
      
      private var _type:int;
      
      private var var_1710:String;
      
      private var var_735:GuestRoomData;
      
      private var var_1709:String;
      
      private var var_1705:int;
      
      public function OfficialRoomEntryData(param1:int, param2:IMessageDataWrapper)
      {
         super();
         _index = param1;
         var_1706 = param2.readString();
         var_1709 = param2.readString();
         var_1708 = param2.readInteger() == 1;
         var_1707 = param2.readString();
         var_810 = param2.readString();
         var_1639 = param2.readInteger();
         _type = param2.readInteger();
         if(_type == const_823)
         {
            var_1710 = param2.readString();
         }
         else if(_type == TYPE_PUBLIC_SPACE)
         {
            var_736 = new PublicRoomData(param2);
         }
         else if(_type == const_606)
         {
            var_735 = new GuestRoomData(param2);
         }
         else if(_type == const_920)
         {
            var_1705 = param2.readInteger();
         }
      }
      
      public function get tag() : String
      {
         return var_1710;
      }
      
      public function get userCount() : int
      {
         return var_1639;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1708;
      }
      
      public function get picText() : String
      {
         return var_1707;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_823)
         {
            return 0;
         }
         if(this.type == const_606)
         {
            return this.var_735.maxUserCount;
         }
         if(this.type == TYPE_PUBLIC_SPACE)
         {
            return this.var_736.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1709;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_735 != null)
         {
            this.var_735.dispose();
            this.var_735 = null;
         }
         if(this.var_736 != null)
         {
            this.var_736.dispose();
            this.var_736 = null;
         }
      }
      
      public function get popupCaption() : String
      {
         return var_1706;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_735;
      }
      
      public function get picRef() : String
      {
         return var_810;
      }
      
      public function get flatCategoryId() : int
      {
         return var_1705;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_736;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
