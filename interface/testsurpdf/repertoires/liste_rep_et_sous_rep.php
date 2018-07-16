<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 

<html> 

<head> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> 
<style type="text/css"> 
* {font-size: 10pt;} 
a:link, a:hover, a:active, a:visited {color: #0000FF;} 
</style> 
</head> 

<body> 

<?php 
$order = isset($_GET['order']) ? $_GET['order'] : ''; 
$order0 = isset($_GET['order0']) ? $_GET['order0'] : ''; 
$dir = isset($_GET['dir']) ? $_GET['dir'] : ''; 
$asc = isset($_GET['asc']) ? $_GET['asc'] : ''; 


/* racine */ 
$BASE = '../'; 


/* infos � extraire */ 
function addScheme($entry,$base,$type) { 
  $tab['name'] = $entry; 
  $tab['type'] = filetype($base.'/'.$entry); 
  $tab['date'] = filemtime($base.'/'.$entry); 
  $tab['size'] = filesize($base.'/'.$entry); 
  $tab['perms'] = fileperms($base.'/'.$entry); 
  $tab['access'] = fileatime($base.'/'.$entry); 
  $t = explode('.', $entry); 
  $tab['ext'] = $t[count($t)-1]; 
  return $tab; 
} 


/* liste des dossiers */ 
function list_dir($base, $cur, $level=0) { 
  global $BASE, $order, $asc; 
  if ($dir = opendir($base)) { 
    $tab = array(); 
    while($entry = readdir($dir)) { 
      if(is_dir($base.'/'.$entry) && !in_array($entry, array('.','..'))) { 
        $tab[] = addScheme($entry, $base, 'dir'); 
      } 
    } 
    /* tri */ 
    usort($tab,'cmp_name'); 
    foreach($tab as $elem) { 
      $entry = $elem['name']; 
      /* chemin relatif � la racine */ 
      $file = $base.'/'.$entry; 
     /* marge gauche */ 
      for($i=1; $i<=(4*$level); $i++) { 
        echo ' '; 
      } 
      /* l'entr�e est-elle le dossier courant */ 
      if($file == $cur) { 
        echo "<img src=\"images/dir-open.gif\" /> $entry<br />\n"; 
      } else { 
        echo "  <img src=\"images/dir-close.gif\" /> <a href=\"$_SERVER[PHP_SELF]?dir=".rawurlencode($file)."&order=$order&asc=$asc\">$entry</a><br />\n"; 
      } 
      /* l'entr�e est-elle dans la branche dont le dossier courant est la feuille */ 
      if(ereg($file.'/',$cur.'/')) { 
        list_dir($file, $cur, $level+1); 
      } 
    } 
    closedir($dir); 
  } 
} 


/* liste des fichiers */ 
function list_file($cur) { 
  global $order, $asc, $order0; 
  if ($dir = opendir($cur)) { 
    /* tableaux */ 
    $tab_dir = array(); 
    $tab_file = array(); 
    /* extraction */ 
    while($file = readdir($dir)) { 
      if(is_dir($cur.'/'.$file)) { 
        if(!in_array($file, array('.','..'))) { 
          $tab_dir[] = addScheme($file, $cur, 'dir'); 
        } 
      } else { 
          $tab_file[] = addScheme($file, $cur, 'file'); 
      } 
    } 
    /* tri */ 
    usort($tab_dir,'cmp_'.$order); 
    usort($tab_file,'cmp_'.$order); 
    /* affichage */ 
    echo '<table cellspacing="0" cellpadding="0" border="0">'; 
    echo '<tr style="font-size:8pt;font-family:arial;"> 
    <th>'.(($order=='name')?(($asc=='a')?'/\\ ':'\\/ '):'')."<a href=\"$_SERVER[PHP_SELF]?dir=".rawurlencode($cur)."&order=name&asc=$asc&order0=$order\">Nom</a></th><td> </td> 
    <th>".(($order=='size')?(($asc=='a')?'/\\ ':'\\/ '):'')."<a href=\"$_SERVER[PHP_SELF]?dir=".rawurlencode($cur)."&order=size&asc=$asc&order0=$order\">Taille</a></th><td> </td> 
    <th>".(($order=='date')?(($asc=='a')?'/\\ ':'\\/ '):'')."<a href=\"$_SERVER[PHP_SELF]?dir=".rawurlencode($cur)."&order=date&asc=$asc&order0=$order\">Derni�re modification</a></th><td> </td> 
    <th>".(($order=='type')?(($asc=='a')?'/\\ ':'\\/ '):'')."<a href=\"$_SERVER[PHP_SELF]?dir=".rawurlencode($cur)."&order=type&asc=$asc&order0=$order\">Type</a></th><td> </td> 
    <th>".(($order=='ext')?(($asc=='a')?'/\\ ':'\\/ '):'')."<a href=\"$_SERVER[PHP_SELF]?dir=".rawurlencode($cur)."&order=ext&asc=$asc&order0=$order\">Extention</a></th><td> </td> 
    <th>".(($order=='perms')?(($asc=='a')?'/\\ ':'\\/ '):'')."<a href=\"$_SERVER[PHP_SELF]?dir=".rawurlencode($cur)."&order=perms&asc=$asc&order0=$order\">Permissions</a></th><td> </td> 
    <th>".(($order=='access')?(($asc=='a')?'/\\ ':'\\/ '):'')."<a href=\"$_SERVER[PHP_SELF]?dir=".rawurlencode($cur)."&order=access&asc=$asc&order0=$order\">Dernier acc�s</a></th></tr>"; 
    foreach($tab_dir as $elem) { 
      echo '<tr><td><img src="images/dir-close.gif" /> '.$elem['name'].'</td><td> </td> 
      <td> </td><td>  </td> 
      <td>'.date("d/m/Y H:i:s", $elem['date']).'</td><td> </td> 
      <td>'.assocType($elem['type']).'</td><td> </td> 
      <td> </td><td>  </td> 
      <td>'.$elem['perms'].'</td><td>  </td> 
      <td>'.date("d/m/Y", $elem['access'])."</td></tr>\n"; 
    } 
    foreach($tab_file as $elem) { 
      echo '<tr><td><img src="images/file-none.gif" /> '.$elem['name'].'</td><td> </td> 
      <td align="right">'.formatSize($elem['size']).'</td><td> </td> 
      <td>'.date("d/m/Y H:i:s", $elem['date']).'</td><td>  </td> 
      <td>'.assocType($elem['type']).'</td><td>  </td> 
      <td>'.assocExt($elem['ext']).'</td><td>  </td> 
      <td>'.$elem['perms'].'</td><td>  </td> 
      <td>'.date("d/m/Y", $elem['access'])."</td></tr>\n"; 
    } 
    echo "</table>"; 
    closedir($dir); 
  } 
} 


/* formatage de la taille */ 
function formatSize($s) { 
  /* unit�s */ 
  $u = array('octets','Ko','Mo','Go','To'); 
  /* compteur de passages dans la boucle */ 
  $i = 0; 
  /* nombre � afficher */ 
  $m = 0; 
  /* division par 1024 */ 
  while($s >= 1) { 
    $m = $s; 
    $s /= 1024; 
    $i++; 
  } 
  if(!$i) $i=1; 
  $d = explode('.',$m); 
  /* s'il y a des d�cimales */ 
  if($d[0] != $m) { 
    $m = number_format($m, 2, ',', ' '); 
  } 
  return $m.' '.$u[$i-1]; 
} 


/* formatage du type */ 
function assocType($type) { 
  /* tableau de conversion */ 
  $t = array( 
    'fifo' => 'file', 
    'char' => 'fichier sp�cial en mode caract�re', 
    'dir' => 'dossier', 
    'block' => 'fichier sp�cial en mode bloc', 
    'link' => 'lien symbolique', 
    'file' => 'fichier', 
    'unknown' => 'inconnu' 
  ); 
  return $t[$type]; 
} 


/* description de l'extention */ 
function assocExt($ext) { 
  $e = array( 
    '' => "inconnu", 
    'doc' => "Microsoft Word", 
    'xls' => "Microsoft Excel", 
    'ppt' => "Microsoft Power Point", 
    'pdf' => "Adobe Acrobat", 
    'zip' => "Archive WinZip", 
    'txt' => "Document texte", 
    'gif' => "Image GIF", 
    'jpg' => "Image JPEG", 
    'png' => "Image PNG", 
    'php' => "Script PHP", 
    'php3' => "Script PHP", 
    'htm' => "Page web", 
    'html' => "Page web", 
    'css' => "Feuille de style", 
    'js' => "JavaScript" 
  ); 
  if(in_array($ext, array_keys($e))) { 
    return $e[$ext]; 
  } else { 
    return $e['']; 
  } 
} 


function cmp_name($a,$b) { 
    global $asc; 
    if ($a['name'] == $b['name']) return 0; 
    if($asc == 'a') { 
        return ($a['name'] < $b['name']) ? -1 : 1; 
    } else { 
        return ($a['name'] > $b['name']) ? -1 : 1; 
    } 
} 
function cmp_size($a,$b) { 
    global $asc; 
    if ($a['size'] == $b['size']) return cmp_name($a,$b); 
    if($asc == 'a') { 
        return ($a['size'] < $b['size']) ? -1 : 1; 
    } else { 
        return ($a['size'] > $b['size']) ? -1 : 1; 
    } 
} 
function cmp_date($a,$b) { 
    global $asc; 
    if ($a['date'] == $b['date']) return cmp_name($a,$b); 
    if($asc == 'a') { 
        return ($a['date'] < $b['date']) ? -1 : 1; 
    } else { 
        return ($a['date'] > $b['date']) ? -1 : 1; 
    } 
} 
function cmp_access($a,$b) { 
    global $asc; 
    if ($a['access'] == $b['access']) return cmp_name($a,$b); 
    if($asc == 'a') { 
        return ($a['access'] < $b['access']) ? -1 : 1; 
    } else { 
        return ($a['access'] > $b['access']) ? -1 : 1; 
    } 
} 
function cmp_perms($a,$b) { 
    global $asc; 
    if ($a['perms'] == $b['perms']) return cmp_name($a,$b); 
    if($asc == 'a') { 
        return ($a['perms'] < $b['perms']) ? -1 : 1; 
    } else { 
        return ($a['perms'] > $b['perms']) ? -1 : 1; 
    } 
} 
function cmp_type($a,$b) { 
    global $asc; 
    if ($a['type'] == $b['type']) return cmp_name($a,$b); 
    if($asc == 'a') { 
        return ($a['type'] < $b['type']) ? -1 : 1; 
    } else { 
        return ($a['type'] > $b['type']) ? -1 : 1; 
    } 
} 
function cmp_ext($a,$b) { 
    global $asc; 
    if ($a['ext'] == $b['ext']) return cmp_name($a,$b); 
    if($asc == 'a') { 
        return ($a['ext'] < $b['ext']) ? -1 : 1; 
    } else { 
        return ($a['ext'] > $b['ext']) ? -1 : 1; 
    } 
} 
?> 


<table border="1" cellspacing="0" cellpadding="10" bordercolor="gray"> 
<tr valign="top"><td> 


<!-- liste des r�pertoires 
et des sous-r�pertoires --> 
<?php 
if(!in_array($order, array('name','date','size','perms','ext','access','type'))) { 
  $order = 'name'; 
} 
if(($order == $order0) && ($asc != 'b')) { 
  $asc = 'b'; 
} else { 
  $asc = 'a'; 
} 
/* lien sur la racine */ 
if(!$dir) { 
  echo "<img src=\"images/dir-open.gif\" /> /<br />\n"; 
} else { 
  echo "<img src=\"images/dir-close.gif\" /> <a href=\"$_SERVER[PHP_SELF]\">/</a><br />\n"; 
} 
list_dir($BASE, rawurldecode($dir), 1);   
?> 


</td><td> 


<!-- liste des fichiers --> 
<?php 

/* r�pertoire initial � lister */ 
if(!$dir) { 
  $dir = $BASE; 
}   
list_file(rawurldecode($dir));   
?> 


</td></tr> 
</table> 
