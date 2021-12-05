package email.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import email.bean.EmailDTO;
import email.service.EmailService;

@Controller // 컨트롤러 어노테이션 선언
@RequestMapping("email") // 공통적인 매핑 주소
public class EmailController {
 
    @Autowired
    EmailService emailService; // 서비스를 호출하기위한 의존성 주입
    /*
    @RequestMapping("write") // 이메일 쓰기를 누르면 이 메소드로 맵핑되어서
    public String write() {
        return "/email/write"; // 다시 write jsp 페이지로 이동하고 jsp페이지에서 내용을 다 채운 뒤에 확인 버튼을 누르면 send.do로 넘어감
    }
 	*/
    @RequestMapping("send") // 확인 (메일발송) 버튼을 누르면 맵핑되는 메소드
    @ResponseBody
    public String send(@ModelAttribute EmailDTO emailDTO, Model model, @RequestParam String email) {
    	emailDTO.setReceiveMail(email);
    	emailDTO.setMessage("12345");
        try {
 
            emailService.sendMail(emailDTO); // dto (메일관련 정보)를 sendMail에 저장함
            //model.addAttribute("message", "이메일이 발송되었습니다."); // 이메일이 발송되었다는 메시지를 출력시킨다.
            return "인증 메일이 발송되었습니다";
 
        } catch (Exception e) {
            e.printStackTrace();
            //model.addAttribute("message", "이메일 발송 실패..."); // 이메일 발송이 실패되었다는 메시지를 출력
            return "인증 메일 발송에 실패하였습니다";
        }
    }
}

