<?php include("head.php"); 
//include("../../css/sing_up.php")
?>
<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/inscriptio.css">

		<title></title>
	</head>
	<body>
		<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				<h5>Ajouter un nouvelle utilisateur</h5>
					<form class="" method="post" action="inscription.php">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Nom</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="Entrez votre nom complet"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Entrez votre Email"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Téléphone</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="number" class="form-control" name="telephone" id="telephone"  placeholder="Entrez votre numero de telephone"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Fonction</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="fonction" id="fonction"  placeholder=""/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Fonction</label>
							<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <select class="form-control" name="fonction" id="fonction"  required="required">
                                                    <option value=""></option>
                                                    <?php 
                                                    $donnees=lister("roles");
                                                    foreach ($donnees as $value) {
                                                    $departement = new Departement($value);
                                            ?>
                                            <option value="<?php echo $departement->id_dpt();?>"><?php echo $departement->libel_dpt();?></option>        
                                            <?php } ?>   
                                    </select>
                                </div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Mot de passe</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Entrez votre Mot de passe"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirmez Mot de passe</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirmez votre Mot de passe"/>
								</div>
							</div>
						</div>

						<div class="form-group ">
							<input type="submit" name="envoi" id="envoi" class="btn btn-primary btn-lg btn-block login-button" value="M'inscrire">
						</div>
						<div class="form-group ">
							<input type="reset" name="rafraichir" id="rafraichir" class="btn btn-primary btn-lg btn-block login-button" value="rafraichir">
						</div>
					</form>
				</div>
			</div>
		</div>

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    
	</body>
</html>