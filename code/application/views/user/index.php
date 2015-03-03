<?php foreach ($user as $user_item): ?>
    <h2><?php echo $user_item['username'] ?></h2>
    <div class="'main">
        <?php echo $user_item['password'] ?>
    </div>
<?php endforeach ?>

Hello