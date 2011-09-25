<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       addTroops.tpl                                               ##
##  Developed by:  Dzoki                                                       ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################
?>

<?php
include("../GameEngine/Lang/".LANG.".php");

if($_SESSION['access'] < ADMIN) die("Access Denied: You are not Admin!");


$id = $_GET['did'];

if(isset($id)){
$village = $database->getVillage($id);  
$user = $database->getUserArray($village['owner'],1);  
$coor = $database->getCoor($village['wref']); 
$varray = $database->getProfileVillages($village['owner']); 
$type = $database->getVillageType($village['wref']);
$fdata = $database->getResourceLevel($village['wref']);
$units = $database->getUnit($village['wref']);


?>
<form action="../GameEngine/Admin/Mods/addTroops.php" method="POST">
<input type="hidden" name="id" id="id" value="<?php echo $id; ?>">
<input type="hidden" name="admid" id="admid" value="<?php echo $_SESSION['id']; ?>">
<table id="member">

    <thead>

    <tr>

        <th colspan="2">Add troops</th>
		
		<?php if($user['tribe'] == 1){ ?>
    </tr></thead><tbody> 
    <tr>
		<td class="addTroops"><img src="../img/un/u/1.gif"></img> <?php echo U1; ?></td>
		<td class="addTroops"><input class="addTroops" name="u1" id="u1" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u1']; ?></b><font></td>
	</tr>
	
	<tr>
		<td><img src="../img/un/u/2.gif"></img> <?php echo U2; ?></td>
		<td><input class="addTroops" name="u2" id="u2" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u2']; ?></b><font></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/3.gif"></img> <?php echo U3; ?></td>
		<td><input class="addTroops" name="u3" id="u3" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u3']; ?></b><font></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/4.gif"></img> <?php echo U4; ?></td>
		<td><input class="addTroops" name="u4" id="u4" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u4']; ?></b><font></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/5.gif"></img> <?php echo U5; ?></td>
		<td><input class="addTroops" name="u5" id="u5" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u5']; ?></b><font></td>
	</tr>
	
	<tr>
		<td><img src="../img/un/u/6.gif"></img> <?php echo U6; ?></td>
		<td><input class="addTroops" name="u6" id="u6" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u6']; ?></b><font></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/7.gif"></img> <?php echo U7; ?></td>
		<td><input class="addTroops" name="u7" id="u7" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u7']; ?></b><font></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/8.gif"></img> <?php echo U8; ?></td>
		<td><input class="addTroops" name="u8" id="u8" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u8']; ?></b><font></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/9.gif"></img> <?php echo U9; ?></td>
		<td><input class="addTroops" name="u9" id="u9" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u9']; ?></b><font></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/10.gif"></img> <?php echo U10; ?></td>
		<td><input class="addTroops" name="u10" id="u10" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u10']; ?></b><font></td>
    </tr>
	
	<?php }
	else if($user['tribe'] == 2){ ?>
    </tr></thead><tbody> 
        <tr>
		<td class="addTroops"><img src="../img/un/u/11.gif"></img> <?php echo U11; ?></td>
		<td class="addTroops"><input class="addTroops" name="u11" id="u11" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u11']; ?></td>
	</tr>
	
	<tr>
		<td><img src="../img/un/u/12.gif"></img> <?php echo U12; ?></td>
		<td><input class="addTroops" name="u12" id="u12" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u12']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/13.gif"></img> <?php echo U13; ?></td>
		<td><input class="addTroops" name="u13" id="u13" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u13']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/14.gif"></img> <?php echo U14; ?></td>
		<td><input class="addTroops" name="u14" id="u14" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u14']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/15.gif"></img> <?php echo U15; ?></td>
		<td><input class="addTroops" name="u15" id="u15" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u15']; ?></td>
	</tr>
	
	<tr>
		<td><img src="../img/un/u/16.gif"></img> <?php echo U16; ?></td>
		<td><input class="addTroops" name="u16" id="u16" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u16']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/17.gif"></img> <?php echo U17; ?></td>
		<td><input class="addTroops" name="u17" id="u17" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u17']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/18.gif"></img> <?php echo U18; ?></td>
		<td><input class="addTroops" name="u18" id="u18" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u18']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/19.gif"></img> <?php echo U19; ?></td>
		<td><input class="addTroops" name="u19" id="u19" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u19']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/20.gif"></img> <?php echo U20; ?></td>
		<td><input class="addTroops" name="u20" id="u20" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u20']; ?></td>
    </tr>
	<?php }
	else if($user['tribe'] == 3){ ?>
    </tr></thead><tbody> 
        <tr>
		<td class="addTroops"><img src="../img/un/u/21.gif"></img> <?php echo U21; ?></td>
		<td class="addTroops"><input class="addTroops" name="u21" id="u21" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u21']; ?></td>
	</tr>
	
	<tr>
		<td><img src="../img/un/u/22.gif"></img> <?php echo U22; ?></td>
		<td><input class="addTroops" name="u22" id="u22" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u22']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/23.gif"></img> <?php echo U23; ?></td>
		<td><input class="addTroops" name="u23" id="u23" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u23']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/24.gif"></img> <?php echo U24; ?></td>
		<td><input class="addTroops" name="u24" id="u24" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u24']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/25.gif"></img> <?php echo U25; ?></td>
		<td><input class="addTroops" name="u25" id="u25" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u25']; ?></td>
	</tr>
	
	<tr>
		<td><img src="../img/un/u/26.gif"></img> <?php echo U26; ?></td>
		<td><input class="addTroops" name="u26" id="u26" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u26']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/27.gif"></img> <?php echo U27; ?></td>
		<td><input class="addTroops" name="u27" id="u27" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u27']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/28.gif"></img> <?php echo U28; ?></td>
		<td><input class="addTroops" name="u28" id="u28" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u28']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/29.gif"></img> <?php echo U29; ?></td>
		<td><input class="addTroops" name="u29" id="u29" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u29']; ?></td>
	</tr>
	
	<tr>
        <td><img src="../img/un/u/30.gif"></img> <?php echo U30; ?></td>
		<td><input class="addTroops" name="u30" id="u30" value="0" maxlength="10">&nbsp;&nbsp;&nbsp;<font color="#bcbcbc" size="1">Currently: <b><?php echo $units['u30']; ?></td>
    </tr>
	<?php } ?>
	</tbody></table>
	<br />
	<div align="right"><input type="image" border="0" src="../img/admin/b/ok1.gif">
	</form>
	<?php } ?>
	<br /><br /><div align="right"><?php if(isset($_GET['d'])) { echo '<font color="Red"><b>Troops added</font></b>';
	} ?>
