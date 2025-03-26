<table>
    <thead>
        <tr>
            <th>Nome</th>
            <th>Quantità</th>
            <th>Prezzo</th>
        </tr>
    </thead>
    <tbody>
        <!-- devo ripetere le righe foreach prodotto -->
        <?php  foreach ( $magazzino->getProdotti() as $prodotto   ) : ?>
            <?php include '../app/view/riga_prodotti.php'; ?>
        <?php  endforeach; ?>
    </tbody>
</table>