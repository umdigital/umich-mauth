<div class="wrap">
    <h2>U-M: M-Authentication</h2>
    <form method="post" action="settings.php?page=<?=$_GET['page'];?>">
        <? settings_fields( 'umich_mauth' ); ?>
        <?php settings_errors(); ?>

        <? include __DIR__ . DIRECTORY_SEPARATOR .'admin-options.tpl'; ?>

        <? submit_button(); ?>
    </form>
</div>
