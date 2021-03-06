package com.etc.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class UpLoadController {

	@RequestMapping(value = "myupload", method = RequestMethod.POST)
	public String upload(HttpServletRequest request) {
		
		System.out.println("test");
		//将request 转换为 MultipartHttpServletRequest
		MultipartHttpServletRequest req = (MultipartHttpServletRequest) request;
		//得到上传的文件
		MultipartFile file = req.getFile("myfile");
		//得到文件域的名字file.getName()   得到文件名file.getOriginalFilename()
		System.out.println(file.getName()+","+file.getOriginalFilename());
		//上传的目标路径，通常放在tomcat同一个目录里面
		String path = request.getRealPath("/imgs")+"/"+file.getOriginalFilename();
		
		//创建目标文件
		File destFile = new File(path);
		try {
			//直接使用封装好的 copyInputStreamToFile 实现文件的上传功能
			FileUtils.copyInputStreamToFile(file.getInputStream(), destFile);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "result";

	}
	

}
