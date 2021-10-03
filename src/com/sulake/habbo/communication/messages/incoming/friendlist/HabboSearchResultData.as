package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2183:Boolean;
      
      private var var_2180:int;
      
      private var var_2181:Boolean;
      
      private var var_1401:String;
      
      private var var_1156:String;
      
      private var var_1630:int;
      
      private var var_1868:String;
      
      private var var_2182:String;
      
      private var var_1869:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1630 = param1.readInteger();
         this.var_1401 = param1.readString();
         this.var_1868 = param1.readString();
         this.var_2183 = param1.readBoolean();
         this.var_2181 = param1.readBoolean();
         param1.readString();
         this.var_2180 = param1.readInteger();
         this.var_1869 = param1.readString();
         this.var_2182 = param1.readString();
         this.var_1156 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1156;
      }
      
      public function get avatarName() : String
      {
         return this.var_1401;
      }
      
      public function get avatarId() : int
      {
         return this.var_1630;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2183;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2182;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1869;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2181;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1868;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2180;
      }
   }
}
