<div class="wrap">
    <h2>U-M: M-Authentication</h2>
    <form method="post" action="settings.php?page=<?=$_GET['page'];?>">
        <?php settings_errors(); ?>

        <?php wp_nonce_field( 'umich-mauth', 'umich_mauth_nonce' ); ?>

        <?php include __DIR__ . DIRECTORY_SEPARATOR .'admin-options.tpl'; ?>

        <?php submit_button(); ?>
    </form>
</div>
