package com.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.imageio.ImageIO;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

public class UheadUpload {
	
	public UheadUpload(){ }
	
	//剪切矩形头像
	public BufferedImage imageCutByRectangle(BufferedImage image) {
		//判断x、y方向是否超过图像最大范围
		int xCoordinate = image.getWidth();
		int yCoordinate = image.getHeight();
		int a=xCoordinate;
		if (xCoordinate > yCoordinate) {
			a = yCoordinate;
		}
		BufferedImage resultImage = new BufferedImage(a, a, image.getType());
		for (int x = 0; x < a; x++) {
			for (int y = 0; y < a; y++) {
				int rgb = image.getRGB(x, y);
				resultImage.setRGB(x, y, rgb);
			}
		}
		return resultImage;
	}
	//剪切圆形头像
	public BufferedImage cutImageCircle(BufferedImage image){
		// 判断圆心左右半径是否超限
		int xCoordinate = image.getWidth() / 2 - 1;
		int yCoordinate = image.getHeight() / 2 - 1;
		int radius = xCoordinate;
		if (xCoordinate > yCoordinate) {
			radius = yCoordinate;
		}
		int length = 2 * radius + 1;
		BufferedImage resultImage = new BufferedImage(length, length,
				image.getType());
		for (int i = 0; i < length; i++) {
			for (int j = 0; j < length; j++) {
				int x = i - radius;
				int y = j - radius;
				int distance = (int) Math.sqrt(x * x + y * y);
				if (distance <= radius) {
					int rgb = image.getRGB(x + xCoordinate, y + yCoordinate);
					resultImage.setRGB(i, j, rgb);
				}
			}
		}
		return resultImage;
	}
	
	public String headUpload(String filePath,int notRandomId){
		filePath = filePath.replace(File.separatorChar,'/');
		
		// 获取web服务器工作路径
		String realPath = ServletActionContext.getServletContext().getRealPath("/");
		realPath = realPath.replace(File.separatorChar,'/');

		// 获取当前时间
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		//当前时间格式化
		String currntTime = sdf.format(date);
		//设置新的文件名   用户ID+当前时间
		String imageName = notRandomId + currntTime;
		String newName = imageName + filePath.substring(filePath.lastIndexOf("."));
		//System.out.println(realPath);
		String path1="C:/Users/Catwang.DESKTOP-LAVTUUH/Desktop/Catwang/Course/Web框架开发/201750545管惠亭/firstly1_3/WebRoot";
		File fileWeb=new File(path1+"/userHead/"+newName);
		File fileWeb1=new File(realPath+"/userHead/"+newName);
		File fileWebRe=new File(path1+"/userHead/re"+newName);
		File fileWebRe1=new File(realPath+"/userHead/re"+newName);
		//获取选择的文件		
		File file=new File(filePath);
		//System.out.println(filePath);
		try {
			BufferedImage image = ImageIO.read(file);
			BufferedImage CircleResult = cutImageCircle(image);
			BufferedImage RectangleResult = imageCutByRectangle(image);
			ImageIO.write(CircleResult,"png", fileWeb);
			ImageIO.write(CircleResult,"png", fileWeb1);
			ImageIO.write(RectangleResult,"png", fileWebRe);
			ImageIO.write(RectangleResult,"png", fileWebRe1);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return newName;
	}
	
	public String tbgUpload(String filePath,int notRandomId){
		filePath = filePath.replace(File.separatorChar,'/');
		
		// 获取web服务器工作路径
		String realPath = ServletActionContext.getServletContext().getRealPath("/");
		realPath = realPath.replace(File.separatorChar,'/');

		// 获取当前时间
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		//当前时间格式化
		String currntTime = sdf.format(date);
		//设置新的文件名   用户ID+当前时间
		String imageName = notRandomId + currntTime;
		String newName = imageName + filePath.substring(filePath.lastIndexOf("."));
		//System.out.println(realPath);
		String path1="C:/Users/Catwang.DESKTOP-LAVTUUH/Desktop/Catwang/Course/Web框架开发/201750545管惠亭/firstly1_3/WebRoot";
		File fileWeb=new File(path1+"/bgimages/"+newName);
		File fileWeb1=new File(realPath+"/bgimages/"+newName);
		//获取选择的文件		
		File file=new File(filePath);
		//System.out.println(filePath);
		try {
			BufferedImage image = ImageIO.read(file);
			ImageIO.write(image,"png", fileWeb);
			ImageIO.write(image,"png", fileWeb1);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return newName;
	}
}
