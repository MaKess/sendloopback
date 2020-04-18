"sendloopback" is milter (mail filter) that can be used with MTAs (like 
postfix) to automatically loop back sent mails to the MDA (like dovecot).

the goal of this is to store of copy of sent mails in a "Sent" folder without 
requireing the MUA (Thunderbird, Evolution, Outlook, ...) to upload the mail 
twice to the server (once through SMTP and once throuh IMAP).

the association to which account outgoing mails are looped back is done through 
a MySQL database table.
