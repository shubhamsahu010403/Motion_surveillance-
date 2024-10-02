function sendim (filename) 
UserName = 'shubhamsahu01381@gmail.com' ;
password = 'bjeh qaow ldxy pcsg' ;
setpref('Internet' , 'E_mail' , UserName);
setpref('Internet' , 'SMTP_Server' , 'smtp.gmail.com');
setpref('Internet' , 'SMTP_Username' , UserName);
setpref('Internet' , 'SMTP_Password' , password);
props = java.lang.System.getProperties ; 
props.setProperty('mail.smtp.auth' , 'true');
props.setProperty('mail.smtp.starttls.enable', 'true');
props.setProperty('mail.smtp.socketFactory.class' , ...
                  'javax.net.ssl.SSLSocketFactory');
 props.setProperty('mail.smtp.socketFactory.port' , '465');
%props.setProperty('mail.smtp.socketFactory.port', '587');
emailto = 'shubhamsahu01382@gmail.com' ;
sendmail (emailto , 'My Subject' , 'My message ' , filename);


