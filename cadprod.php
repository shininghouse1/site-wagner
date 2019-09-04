<?php 
	if(empty($_COOKIE['nivel'])){
		header("Location: index.php");
	}

	include "anterior.php";
?>

	<h1>
		Cadastre-se aqui!
	</h1>
	<form action="cadprod2.php" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="titulo">Nome</label>
			<input type="text" required name="titulo" id="titulo" class="form-control" />
		</div>
		<div class="form-group">
			<label for="descricao">Faça uma breve descrição</label>
			<input type="text" required name="descricao" id="descricao" class="form-control" />
		</div>
		<div class="form-group">
			<label for="preco">Valor cobrado pelo serviço</label>
			<input type="number" required name="preco" id="preco" class="form-control" />
		</div>
		<div class="form-group">
			<label for="categoria">Tipo de serviço</label>
			<select name="categoria" id="categoria" class="form-control">
				<option value="camiseta">Diarista</option>
				<option value="Miniaturas">Empresa</option>
			</select>
		</div>
		<div class="form-group">
			<label>Escolha sua foto!</label>
			<input type="file" name="arquivo" class="form-control" accept="image/jpeg, image/png" required />
		</div>
		<button type="submit" class="btn btn-primary">Cadastrar Produto</button>
	</form>
<?php 
	include "posterior.php";
?>