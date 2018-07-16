<?php class Crypter{

   var $key;


   /*----------------------------------------------------------------------
     Entrer: $cle => clé de cryptage
     
     ----------------------------------------------------------------------*/
public   function Crypter($cle){
      $this->key = $cle;
   }
   public function setKey($cle){
      $this->key = $cle;
   }
   
   public function keyED($txt) { 
      $encrypt_key = md5($this->key); 
      $ctr=0; 
      $tmp = ""; 
      for ($i=0;$i<strlen($txt);$i++) { 
         if ($ctr==strlen($encrypt_key)) $ctr=0; 
         $tmp.= substr($txt,$i,1) ^ substr($encrypt_key,$ctr,1); 
         $ctr++; 
      } 
      return $tmp; 
   } 
   
   public function encrypt($txt){ 
      srand((double)microtime()*1000000); 
      $encrypt_key = md5(rand(0,32000)); 
      $ctr=0; 
      $tmp = ""; 
      for ($i=0;$i<strlen($txt);$i++){ 
         if ($ctr==strlen($encrypt_key)) $ctr=0; 
         $tmp.= substr($encrypt_key,$ctr,1) . 
             (substr($txt,$i,1) ^ substr($encrypt_key,$ctr,1)); 
         $ctr++; 
      } 
      return base64_encode($this->keyED($tmp)); 
   } 

   public function decrypt($txt) { 
      $txt = $this->keyED(base64_decode($txt)); 
      $tmp = ""; 
      for ($i=0;$i<strlen($txt);$i++){ 
         $md5 = substr($txt,$i,1); 
         $i++; 
         $tmp.= (substr($txt,$i,1) ^ $md5); 
      } 
      return $tmp; 
   } 

}
/*$cr=new Crypter("wln3");
echo "message crypter";$sol=$cr->encrypt("olivier");var_dump($sol); echo "<br>";
echo "message décrypter";$dsol=$cr->decrypt($sol);
var_dump($dsol);*/

/*

Fonctions du code
md5: Calcule le md5 d'une chaîne - (PHP 4, PHP 5, PECL hash:1.1-1.3)
strlen: Calcule la taille d'une chaîne - (PHP 4, PHP 5)
substr: Retourne un segment de chaîne - (PHP 4, PHP 5)
microtime: Retourne le timestamp UNIX actuel avec les microsecondes - (PHP 4, PHP 5)
srand: Initialise le générateur de nombres aléatoires - (PHP 4, PHP 5)
rand: Génère une valeur aléatoire - (PHP 4, PHP 5)
base64_encode: Encode une chaîne en MIME base64 - (PHP 4, PHP 5)
base64_decode: Décode une chaîne en MIME base64 - (PHP 4, PHP 5)
 */
 ?>