<?php include 'demo.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <h1>Playlist</h1>

    <table>
    <thead>
        <tr>
            <th>Titolo</th>
            <th>Cantanti</th>
        </tr>
    </thead>

    <tbody>
        
        <?php foreach( $scatolaCanzoni as $canzone) : ?>
    
            <tr>
                <td>
                    <a href="https://www.youtube.com/results?search_query=<?= $canzone->titolo ?>" target="_blank">
                        <?= $canzone->titolo ?>
                    </a>
                </td> 

                <td>
                <a href="https://www.google.com/search?q=<?= $canzone->cantanti ?>" target="_blank">
                    <?= $canzone->cantanti ?>
                </a>
                </td>
            </tr>
    
        <?php endforeach; ?>   


    </tbody>


    </table>
</body>
</html>
