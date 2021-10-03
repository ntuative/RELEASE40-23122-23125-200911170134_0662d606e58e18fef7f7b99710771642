package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1443:BigInteger;
      
      private var var_969:BigInteger;
      
      private var var_2010:BigInteger;
      
      private var var_1442:BigInteger;
      
      private var var_2008:BigInteger;
      
      private var var_2009:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1443 = param1;
         var_2010 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2008.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1442 = new BigInteger();
         var_1442.fromRadix(param1,param2);
         var_2008 = var_1442.modPow(var_969,var_1443);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2009.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_969 = new BigInteger();
         var_969.fromRadix(param1,param2);
         var_2009 = var_2010.modPow(var_969,var_1443);
         return true;
      }
   }
}
