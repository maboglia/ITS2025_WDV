<h1>Calcolatrice</h1>

<form action="" method="post">

    <div>
        <label for="operando1">operando1</label>
        <input type="number" name="operando1" id="operando1">
    </div>

    <div>
        <input type="radio" name="operatore" id="plus"  value="+">
        <label for="plus">+</label>
        <input type="radio" name="operatore" id="minus"  value="-">
        <label for="minus">-</label>
        <input type="radio" name="operatore" id="times"  value="*">
        <label for="times">*</label>
        <input type="radio" name="operatore" id="divide"  value="/">
        <label for="divide">/</label>
    </div>

    <div>
        <label for="operando2">operando2</label>
        <input type="number" name="operando2" id="operando2">
    </div>

    <input type="submit" value="Calcola">

</form>

<?php

$operando1 = $_POST['operando1'] ?? '';
$operando2 = $_POST['operando2'] ?? '';
$operatore = $_POST['operatore'] ?? '';

$result = 0;

try {

    if ($operando2 == 0 && $operatore == '/') {
        throw new Exception("Divisione per zero non permessa!");
    }

    switch ($operatore ) {
        case '+': $result = $operando1 + $operando2; break;
        case '-': $result = $operando1 - $operando2; break;
        case '*': $result = $operando1 * $operando2; break;
        case '/': $result = $operando1 / $operando2; break;
        
        default:
            # code...
            break;
    }

} catch (Exception $eccezione) {
    echo "Spiacenti, il calcolo non può essere eseguito";
}

?>

<h2>Il risultato è <?= $result ?></h2>