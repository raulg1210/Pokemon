<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			
			<head>
				<title>Pokemon</title>
				<!-- Required meta tags -->
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
				
				<!-- Bootstrap CSS -->
				<link rel="stylesheet" href="style.css"/>
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
										integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
			</head>
			
			<body>
				<div class="container">
					<header class="d-flex flex-column justify-content-center">
						<div id="tituloheader">
							<h1 class="m-0">POKEDEX</h1>
						</div>
						<div id="textoheader">
							<p class="m-0">
								Los Pokémon son criaturas de todo tipo de formas y tamaños que viven bien en un medio salvaje o junto
								a los seres humanos. Los dueños de los Pokémon (denominados “Entrenadores”) los crían y los cuidan.
								Durante sus aventuras, los Pokémon crecen y adquieren más experiencia, e incluso, en ocasiones,
								evolucionan para convertirse en Pokémon más fuertes. En la actualidad, hay más de 700 criaturas que
								habitan el universo Pokémon.
							</p>
						</div>
					</header>
					
					<h1 class="text-center text-light textoopaco"><strong> TYPES</strong></h1>
					<div class="row justify-content-center">
						<xsl:for-each select="pokedex/types/type">
							<div class="col-lg-4 col-md-6 mb-4">
								<div class="card-body fondo-card text-center border border-white rounded">
									<img src="img/{.}_type.png" class="medida" alt=""/>
									<p class="card-title text-center text-light"><xsl:value-of select="." /></p>
								</div>
							</div>
						</xsl:for-each>
					</div>
					<h1 class="text-center text-light textoopaco"><strong> POKEMONS</strong></h1>
					<div class="row justify-content-center">
						<xsl:for-each select="pokedex/pokemon">
							<div class="col-lg-6 mb-3">
								<div class="card-body fondo-card text-center border border-white rounded">
									<div class="row">
										<div class="col-5">
											<img src="https://assets.pokemon.com/assets/cms2/img/pokedex/detail/{dex}.png" alt=""/>
										</div>
										<div class="col-7">
											<div class="card-body">
												<h4 class="card-title text-light"><xsl:value-of select="species" /></h4>
												<p class="card-text text-light">
													HP: <xsl:value-of select="baseStats/HP" />
												</p>
												<p class="card-text text-light">
													ATK: <xsl:value-of select="baseStats/ATK" />
												</p>
												<p class="card-text text-light">
													DEF: <xsl:value-of select="baseStats/DEF" />
												</p>
												<p class="card-text text-light">
												<xsl:choose>
												<xsl:when test="baseStats/SPD > 100">
												<span class="text-danger">
													SPD: <xsl:value-of select="baseStats/SPD" />
												</span>
													</xsl:when>
													</xsl:choose>
												</p>
												<p class="card-text text-light">
													SATK: <xsl:value-of select="baseStats/SATK" />
												</p>
												<p class="card-text text-light">
													<xsl:for-each select="types/type">
														<img src="img/{.}_type.png" class="medida" alt=""/>
														
													</xsl:for-each>
												</p>
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</xsl:for-each>
					</div>
				</div>
				<footer class="container bg-secondary py-3">
					<h3 class="text-center">EL MUNDO POKEMON EN AZARQUIEL-S1DAM-S1ASIR</h3>
				</footer>
				<!-- Optional JavaScript -->
				<!-- jQuery first, then Popper.js, then Bootstrap JS -->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
												integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
												crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
												integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
												crossorigin="anonymous"></script>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
												integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
												crossorigin="anonymous"></script>
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>