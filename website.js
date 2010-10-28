$(function() {

    $('#isNewNickname').click(function() {
        $('#newNickname').css('display', 'none');
        $('#validateMasterPassword').css('display', 'inline').focus();
    });

    $('#createAccountPassword').click(function() {
        if (!!$('#isNewNickname').attr('checked')) {
            if ($('#masterPassword').val() !==
                    $('#validateMasterPassword').val()) {
                $('#masterPassword').val('');
                $('#validateMasterPassword').val('');
                $('#masterPasswordSection > h2')
                    .css('background-color', 'red');
                $('#masterPassword').focus();
                return;
            }
            // In case a previous validation failed.
            var goodBgColor = $('#nicknameSection > h2')
                                .css('background-color');
            $('#masterPasswordSection > h2').css('background-color',
                                                 goodBgColor);
        }

        var accountPassword = oplop.accountPassword($('#nickname').val(),
                                    $('#masterPassword').val());
        $(':password, :text').val('');

        $('#accountPassword').val(accountPassword).focus();
    });

});
