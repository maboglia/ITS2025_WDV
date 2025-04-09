<h1>Luoghi</h1>

<form action="" method="post">

    <div><input type="text" name="tipo" placeholder="tipo"></div>
    <div><input type="text" name="nome" placeholder="nome"></div>
    <div><input type="text" name="indirizzo" placeholder="indirizzo"></div>
    <div><input type="text" name="foto" placeholder="foto"></div>
    <div><input type="submit" value="Add Luogo"></div>

</form>

<?php
    if (isset($_POST) && !empty($_POST)){
        $tipo = $_POST['tipo'];
        $nome = $_POST['nome'];
        $indirizzo = $_POST['indirizzo'];
        //$foto = $_POST['foto'];

        $luogoTemp = new Luogo($tipo,$nome);
        $luogoTemp->indirizzo = $indirizzo;
        $luogoTemp->foto = addslashes($_POST['foto']);
        $luoghiOOP[] = $luogoTemp;//array_push()

        $dao = new LuogoDAO();
        $dao->addLuogo($luogoTemp);

        $dao->getLuoghi();

    }
?>

<table>

    <tr>
        <th>Tipo</th>
        <th>Nome</th>
        <th>Indirizzo</th>
        <th>Foto</th>
    </tr>

    <?php foreach ($luoghiOOP as $luogo) :  ?>
        
        <tr>
            <td><?= $luogo->tipo ?></td>
            <td><?= $luogo->nome ?></td>
            <td><?= $luogo->indirizzo ?></td>
            <td><img src="<?= $luogo->foto ?>"></td>
        </tr>
        
    <?php endforeach; ?>
</table>