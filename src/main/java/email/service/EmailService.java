package email.service;

import email.bean.EmailDTO;

public interface EmailService {
    public void sendMail(EmailDTO dto);
}

