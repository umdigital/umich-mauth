<div class="wrap">
    <h2>U-M: M-Authentication</h2>
    <form method="post" action="options-general.php?page=<?=$_GET['page'];?>">
        <? settings_fields( 'umich_mauth' ); ?>

        <? include __DIR__ . DIRECTORY_SEPARATOR .'admin-groups.tpl'; ?>

        <? submit_button(); ?>
    </form>
</div>
