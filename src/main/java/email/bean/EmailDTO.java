package email.bean;

import lombok.Data;

@Data
public class EmailDTO {
    private String senderName="JAVACOMICS";    //발신자 이름
    private String senderMail="sangi4645@gmail.com";    //발신자 이메일 주소
    private String receiveMail;    //수신자 이메일 주소
    private String subject="JAVACOMICS 인증 메일";            //제목
    private String message;            //본문
    

    
}