<div class="wrap">
    <?php settings_errors(); ?>

    <h2>Add U-M User</h2>
    <form method="post" action="">
        <?php wp_nonce_field( 'umich-mauth', 'umich_mauth_adduser_nonce' ); ?>
        <input type="hidden" name="createaction" value="um" />

        <table class="form-table">
            <tr valign="top">
                <th scope="row"><label for="uname">Uniqname</label></th>
                <td><input type="text" id="uname" name="uname" value="<?=$default['uname'];?>" placeholder="Enter users U-M Uniqname" class="regular-text" /></td>
            </tr>
            <?php if( !is_network_admin() ): ?>
            <tr valign="top">
                <th scope="row"><label for="role">Role</label></th>
                <td>
                    <select id="role" name="role">
                        <?php global $wp_roles; ?>
                        <?php foreach( $wp_roles->role_names as $role => $name ): ?>
                        <option value="<?=$role;?>"<?=( $role == $default['role'] ? ' selected="selected"' : null);?>><?=$name;?></option>
                        <?php endforeach; ?>
                    </select>
                </td>
            </tr>
            <?php endif; ?>
        </table>

        <?php submit_button( 'Add User' ); ?>
    </form>
</div>
