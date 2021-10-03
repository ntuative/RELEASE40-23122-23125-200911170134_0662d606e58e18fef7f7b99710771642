package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_1006:Boolean;
      
      private var _name:String;
      
      private var var_2017:String;
      
      private var var_1005:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2017 = String(param1.@link);
         var_1005 = Boolean(parseInt(param1.@fliph));
         var_1006 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_1005;
      }
      
      public function get flipV() : Boolean
      {
         return var_1006;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2017;
      }
   }
}
