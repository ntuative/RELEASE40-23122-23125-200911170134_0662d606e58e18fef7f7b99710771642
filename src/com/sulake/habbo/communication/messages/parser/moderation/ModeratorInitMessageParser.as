package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1818:Boolean;
      
      private var var_1387:Array;
      
      private var var_1821:Boolean;
      
      private var var_1824:Boolean;
      
      private var var_1820:Boolean;
      
      private var var_158:Array;
      
      private var var_1825:Boolean;
      
      private var var_1823:Boolean;
      
      private var var_1388:Array;
      
      private var var_1819:Boolean;
      
      private var var_1822:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1822;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1818;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1821;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1825;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1823;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1387;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_158 = [];
         var_1387 = [];
         _roomMessageTemplates = [];
         var_1388 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_158.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1387.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1388.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1825 = param1.readBoolean();
         var_1820 = param1.readBoolean();
         var_1821 = param1.readBoolean();
         var_1824 = param1.readBoolean();
         var_1822 = param1.readBoolean();
         var_1823 = param1.readBoolean();
         var_1818 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1819 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1824;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1388;
      }
      
      public function get issues() : Array
      {
         return var_158;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1819;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1820;
      }
   }
}
