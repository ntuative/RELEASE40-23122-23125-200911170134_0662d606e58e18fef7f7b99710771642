package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_523:String;
      
      private var var_2173:String;
      
      private var var_2174:int;
      
      private var var_2177:int;
      
      private var var_1162:String;
      
      private var var_1156:String;
      
      private var _name:String;
      
      private var var_717:int;
      
      private var _respectLeft:int;
      
      private var var_2176:int;
      
      private var var_1627:int;
      
      private var var_2175:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2177;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1156;
      }
      
      public function get customData() : String
      {
         return this.var_2173;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_717;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2174;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2175;
      }
      
      public function get figure() : String
      {
         return this.var_523;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1627;
      }
      
      public function get sex() : String
      {
         return this.var_1162;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_523 = param1.readString();
         this.var_1162 = param1.readString();
         this.var_2173 = param1.readString();
         this.var_1156 = param1.readString();
         this.var_2176 = param1.readInteger();
         this.var_2175 = param1.readString();
         this.var_2174 = param1.readInteger();
         this.var_2177 = param1.readInteger();
         this.var_1627 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_717 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2176;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
   }
}
