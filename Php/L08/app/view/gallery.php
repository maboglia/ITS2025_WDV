<h1>Gallery</h1>

<?php

    //print_r($_SESSION);

    if (!isset($_SESSION['utente']))
        die('Per vedere la galleria è necessario l\'account premium');

?>
<div id="immagini">

    <?php foreach ($piazze as $piazza) :  ?>
        <figure>
        <img
            src="<?= $piazza['foto'] ?>"
            alt="<?= $piazza['nome'] ?>" />
        <figcaption><?= $piazza['nome'] ?></figcaption>
        </figure>
    <?php endforeach; ?>    
</div>