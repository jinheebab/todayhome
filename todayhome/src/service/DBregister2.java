package service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.BookDao;
import model.HostingDao;
import model.JoinDao;
import model.LoginDao;
import model.MainDao;
import model.MessageDao;
import model.SharingDao;

@Service
public class DBregister2 {

	
	@Autowired
	SqlSessionFactory factory;
	@Autowired
	ServletContext application;
	@Autowired
	   HostingDao hdao;
	   @Autowired
	   BookDao bdao;
	   @Autowired
	   JoinDao jdao;
	   @Autowired
	   LoginDao ldao;
	   @Autowired
	   MessageDao mdao;
	   @Autowired
	   SharingDao sdao;
	   @Autowired
	   MainDao madao;

	
	public int hosting(){
		
		 for(int a=0; a<100000; a++){
		      Map map = new HashMap<>();
		      String title = "";
		      
		      for (int i = 1; i <= 20; i++) {
		            char ch = (char) ((Math.random() * 26) + 65);
		            title += ch;
		          }
		      
		      String[] htypeSample = {"단독주택","아파트","호텔","산장","호스텔","리조트","레지던스","게스트하우스","기숙사","민수(타이완)","료칸(일본)","펜션(한국)","헤리티지 호텔(인도)"}; 
		      
		      int b = (int)(Math.random()*13);
		      
		      String htype = htypeSample[b];
		      
		      String[] rtypeSample = {"집전체","일인실","다인실"};
		      
		      int c = (int)(Math.random()*3);
		      
		      String rtype = rtypeSample[c];
		      
		      int roomcnt = (int)(Math.random()*5+1);
		      
		      int membercnt = (int)(Math.random()*5+1);
		      
		      int bedcnt = (int)(Math.random()*5+1);
		      
		      int bathcnt = (int)(Math.random()*5+1);
		      
		      String[] countrySample = {"대한민국","일본","그리스","필리핀","영국","미국","중국","호주","이탈리아","스페인","인도네시아","인도","프랑스","러시아","아프리카","캐나다","아일랜드"}; 
		      
		      int d = (int)(Math.random()*8);
		      
		      String country = countrySample[d];
		      
		      String[] citySample = {"서울시","수원시","부천시","제주시","안산시","안양시","부산시","인천시","광주시","상하이",
		    		  "도쿄","북경","신주쿠","LA","NewYork","rome","런던","파리"};
		      
		      
		      int e = (int)(Math.random()*8);
		      
		      String city = citySample[e];
		      
		      String location = "신영통";
		      
		      String amenity = "";
		      
		      
		      
		      for (int i = 1; i <= 20; i++) {
		            char ch = (char) ((Math.random() * 26) + 65);
		            amenity += ch;
		          }
		      
		      String rule = "";
		      
		      for (int i = 1; i <= 20; i++) {
		            char ch = (char) ((Math.random() * 26) + 65);
		            rule += ch;
		          }
		      
		      
		      String condition = "아무나";
		      
		int[] maxDays = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
		        
		        int iMinMonth = 1;
		        int iMaxMonth = 12;
		        
		        int iRandomMonth = (int)(Math.random() * iMaxMonth - iMinMonth + 1) + iMinMonth;
		        int iRandomDay = (int)(Math.random() * (maxDays[iRandomMonth-1] -2) + 1);
		        
		        
		        int iRandomMonth2 = (int)(Math.random() * iMaxMonth - iMinMonth + 1) + iMinMonth;
		        int iRandomDay2 = (int)(Math.random() * (maxDays[iRandomMonth-1] -2) + 1);

		        int temp;
		        
		        if(iRandomMonth > iRandomMonth2){
		           temp = iRandomMonth;
		           iRandomMonth = iRandomMonth2;
		           iRandomMonth2 = temp;
		        
		        }else if(iRandomMonth == iRandomMonth2){

		           if(iRandomDay > iRandomDay2){
		              temp = iRandomDay;
		              iRandomDay = iRandomDay2;
		              iRandomDay2 = temp;
		           }
		        }
		        
		        
		        String startdate = "2017-"+iRandomMonth+"-"+iRandomDay;
		        String enddate = "2017-"+iRandomMonth2+"-"+iRandomDay2;
		      
		      int price = (int)(Math.random()*999999+10000);
		      
		      String category = "#";
		      
		      for (int i = 1; i <= 20; i++) {
		            char ch = (char) ((Math.random() * 26) + 65);
		            category += ch;
		          }
		      
		      String hname = "leeja";
		      
		      String intro = "";
		      
		      for (int i = 1; i <= 20; i++) {
		            char ch = (char) ((Math.random() * 26) + 65);
		            intro += ch;
		          }
		      
		      String[] picurlSample = 
		         {"https://a0.muscache.com/im/pictures/4084180/e5bc5484_original.jpg?aki_policy=xx_large",
		        	" https://a0.muscache.com/im/pictures/4083613/e119eda1_original.jpg?aki_policy=x_large",
		        		" https://a0.muscache.com/im/pictures/16515932/4d1d71ae_original.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/16516326/b37e3318_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/812e040f-6f6f-4cae-ad67-66c050b57c1f.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/106791885/477f8fd0_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/107145312/5dd7ba73_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/4987161/7b8afcae_original.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/d83db3fd-6e8e-45ea-9b9e-96a6e92906a2.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/0ace2885-1608-428a-a6ee-cae1c7afa6ac.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/41671788/112cfec6_original.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/41672334/7a476550_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/48806892/20c44ce1_original.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/44979845/dae86d84_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/47348586/fa9be9fb_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/f44de2df-83dc-41d7-a1d4-9cd92cf07cd6.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/e14795bf-b234-49a3-b7ac-4ef17c94040f.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/f455284f-247d-44fb-9d1e-d8414319a3b2.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/5896406/90befc90_original.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/5896464/ebbc5001_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/4213867/0fdedcf7_original.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/4157714/6202e023_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/4157744/8edca9b9_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/7212541/9fb13a08_original.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/7212637/78510100_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/7212832/afbfa5aa_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/7212995/c657db6c_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/fb696f59-e262-4621-be85-cde39a4e7f35.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/98656768/9737ae91_original.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/94443203/8fe31360_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/94443218/b7bc1040_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/aa308ba9-df5e-410b-9e0b-4bb9f1a7c52c.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/53488170/852bd0b0_original.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/1f38d7c3-9393-4aac-8d48-56cd9f21bfc5.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/fab4022d-d1fa-4ee7-86d4-6a409938b6ea.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/f43f43d2-5a70-41ff-a100-0dc7458dfb85.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/4eb00dc1-0f37-4004-92cc-66becff9bef8.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/111417091/75e08869_original.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/111415686/449fb6cb_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/77d80754-10c5-48f8-94b9-042fb946ab5a.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/14b81e96-1f42-4c9c-9743-c5b30bca70e5.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/faded753-1642-4eb8-8743-8bca312896b0.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/5c1335ab-6636-4e62-8f05-e15349efa01f.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/65b14249-6c0f-40f7-b13b-9e24c8c08fe9.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/0e691b73-fa3b-4c26-8849-fce7efa876fd.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/2650b842-d59c-4d39-be1d-a5a5cbc2a6fa.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/f7ba8b80-7518-4961-abd0-f2da8462372e.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/9bf7d33b-5293-4ee3-8101-b9f4c0a0a8b4.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/c115fccd-f396-4e3c-a887-ac6b44f31e7a.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/30c0d566-d911-4ac2-acfd-9b8a88a7adf5.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/78540079-712e-4832-a2a8-ea430fbc9af6.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/36b11f0e-db0c-4c6f-8b66-dfd4207e6126.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/27052a86-3994-429c-853e-3eaa2b1940fd.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/eff31694-e8bb-4ec4-a7ee-6051de1de1c1.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/f90427c5-1433-4756-81d6-04625662ba94.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/b6fa3901-f2ca-4bc4-ba6c-bebb77ce9ef4.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/27742de9-ccec-4888-9a0d-512566ab183d.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/88277306/90835ac0_original.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/88277163/5038f75a_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/88279974/1e92fa58_original.jpg?aki_policy=x_large",
		        		 "https://a0.muscache.com/im/pictures/77796217-f1c4-4a26-80cd-84c6b820ff6d.jpg?aki_policy=xx_large",
		        		 "https://a0.muscache.com/im/pictures/3c4b0407-9a8d-4830-80c0-ee999238b3a2.jpg?aki_policy=x_large"
		         };
		      
		      int f = (int)(Math.random()*picurlSample.length);
		      
		      String picurl = picurlSample[f];
		      
		      String address ="경상북도 울릉군 울릉읍 독도박물관";
		      
		      
		      
		      map.put("title", title);
		      map.put("htype", htype);
		      map.put("rtype", rtype);
		      map.put("roomcnt", roomcnt);
		      map.put("membercnt", membercnt);
		      map.put("bedcnt", bedcnt);
		      map.put("bathcnt", bathcnt);
		      map.put("country", country);
		      map.put("city", city);
		      map.put("location", location);
		      map.put("amenity", amenity);
		      map.put("rule", rule);
		      map.put("condition", condition);
		      map.put("startdate", startdate);
		      map.put("enddate", enddate);
		      map.put("price", price);
		      map.put("category", category);
		      map.put("hname", hname);
		      map.put("intro", intro);
		      map.put("picurl", picurl);
		      map.put("address", address);
		      
		      System.out.println(map.toString());

		      int r = hdao.addHosting(map);
		      
		      if(r==1){
		    	  System.out.println("등록성공");
		      }else{
		    	  System.out.println("등록실패");
		      }
		
		      
	}
		 return 1;
	
	}
	
	public int book(){
		
		  for(int a=0; a<100000; a++){
		      
		      
		      Map map = new HashMap<>();
		      
		      
		      String name="";
		      
		      for (int i = 1; i <= 5; i++) {
		            char ch = (char) ((Math.random() * 26) + 65);
		            name += ch;
		          }
		      
		      
		      
		      
		      int membercnt = (int)(Math.random()*5+1);
		      
		      String intro = "";
		      
		      for (int i = 1; i <= 20; i++) {
		            char ch = (char) ((Math.random() * 26) + 65);
		            intro += ch;
		          }
		      
		      int[] maxDays = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
		        
		        int iMinMonth = 1;
		        int iMaxMonth = 12;
		        
		        int iRandomMonth = (int)(Math.random() * iMaxMonth - iMinMonth + 1) + iMinMonth;
		        int iRandomDay = (int)(Math.random() * (maxDays[iRandomMonth-1] -2) + 1);
		        
		        
		        int iRandomMonth2 = (int)(Math.random() * iMaxMonth - iMinMonth + 1) + iMinMonth;
		        int iRandomDay2 = (int)(Math.random() * (maxDays[iRandomMonth-1] -2) + 1);

		        int temp;
		        
		        if(iRandomMonth > iRandomMonth2){
		           temp = iRandomMonth;
		           iRandomMonth = iRandomMonth2;
		           iRandomMonth2 = temp;
		        
		        }else if(iRandomMonth == iRandomMonth2){

		           if(iRandomDay > iRandomDay2){
		              temp = iRandomDay;
		              iRandomDay = iRandomDay2;
		              iRandomDay2 = temp;
		           }
		        }
		        
		        
		        String startdate = "2017-"+iRandomMonth+"-"+iRandomDay;
		        String enddate = "2017-"+iRandomMonth2+"-"+iRandomDay2;
		        
		        String[] payinfoSample = {"phone","noaccount","card"};
		        
		        int i = (int)(Math.random()*3);
		        
		        String payinfo = payinfoSample[i];
		        
		        String[] companySample = {"신한카드","롯데카드","우리카드","현대카드","삼성카드"};
		        
		        int ii = (int)(Math.random()*5);
		        
		        String company = companySample[ii];
		        
		        int hostingnum = (int)(Math.random()*150+1);
		      
		        map.put("name", name);
		        map.put("membercnt", membercnt);
		        map.put("intro", intro);
		        map.put("startdate", startdate);
		        map.put("enddate", enddate);
		        map.put("payinfo", payinfo);
		        map.put("company", company);
		        map.put("hostingnum", hostingnum);
		        
		        System.out.println(map.toString());
		        
		        int r = bdao.addBook(map);
		        
		        if(r==1){
		        	System.out.println("등록성공");
		        }else{
		        	System.out.println("등록실패");
		        }
		        
		      
		      
		   }

		return 1;
	}
	
	public int member(){
		
		 for(int a=0; a<100000; a++){
			 
			 
			 HashMap map = new HashMap<>();
			 
			 String name="";
		      
			 for (int i = 1; i <= 3; i++) {
			      char ch = (char) ((Math.random() * 11172) + 0xAC00);
			      name += ch;
			    }
			
			 String id="";
		      
		      for (int i = 1; i <= 5; i++) {
		            char ch = (char) ((Math.random() * 26) + 65);
		            id += ch;
		          }
		      
		      String pass="";
		      
		      for (int i = 1; i <= 5; i++) {
		            char ch = (char) ((Math.random() * 26) + 65);
		            pass += ch;
		          }
			 
		      String[] genderSample = {"male","female"}; 
		      
		      int d = (int)(Math.random()*2);
		      
		      String gender = genderSample[d];
			 
		      
		      int[] maxDays = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
		        
		        int iMinMonth = 1;
		        int iMaxMonth = 12;
		        
		        int iMinYear = 1950;
		        int iMaxYear = 2010;
		        
		        int iRandomMonth = (int)(Math.random() * iMaxMonth - iMinMonth + 1) + iMinMonth;
		        int iRandomDay = (int)(Math.random() * (maxDays[iRandomMonth-1] -2) + 1);
		        int iRandomYear = (int)(Math.random() * iMaxYear - iMinYear + 1) + iMinYear;
		     
		        String birth = iRandomYear+"-"+iRandomMonth+"-"+iRandomDay;
		        
		        
		        String mail="";
			      
			      for (int i = 1; i <= 10; i++) {
			            char ch = (char) ((Math.random() * 26) + 65);
			            mail += ch;
			          }
			      mail += "@naver.com";
			      
			      
			      
			      String[] countrySample = {"대한민국","일본","그리스","필리핀","영국","미국","중국","호주"}; 
			      
			      int e = (int)(Math.random()*8);
			      
			      String country = countrySample[e];
			      
			      map.put("NAME", name);
			      map.put("ID", id);
			      map.put("PASS", pass);
			      map.put("GENDER", gender);
			      map.put("BIRTH", birth);
			      map.put("MAIL", mail);
			      map.put("COUNTRY", country);
			      
			      int r = jdao.addMember(map);
			      
			      if(r==1){
			        	System.out.println("등록성공");
			        }else{
			        	System.out.println("등록실패");
			        }
			      
		 }
		
		 
		 return 1;
	}
	
	
	public int review(){
		
		
		for(int a=0; a<100000; a++){
			 
			 
			 HashMap map = new HashMap<>();
			 
			 
			 String content="";
		      
			 for (int i = 1; i <= 20; i++) {
			      char ch = (char) ((Math.random() * 11172) + 0xAC00);
			      content += ch;
			    }
			 
			 
			 String writer="";
		      
		      for (int i = 1; i <= 5; i++) {
		            char ch = (char) ((Math.random() * 26) + 65);
		            writer += ch;
		          }
		      
		      
		      int grade = (int)(Math.random()*10+1);
		      
		      
		      int hostingnum = (int)(Math.random()*150+1);
		      
		      
		      map.put("msg", content);
		      map.put("writer", writer);
		      map.put("grade", grade);
		      map.put("hostingnum", hostingnum);
		      
		      System.out.println(map.toString());
		      
		      boolean r = madao.addReview(map);
		      
		      if(r==true){
		    	  System.out.println("등록성공");
		      }else{
		    	  System.out.println("등록실패");
		      }
			 
			 
			 
 		}
		
		return 1;
	}
	
	
		public int sharing(){
			
			
			for(int a=0; a<100000; a++){
				 
				 
				 HashMap map = new HashMap<>();
			
				 String type = "hosting";
				 
				 String filename="";
			      
				 for (int i = 1; i <= 5; i++) {
			            char ch = (char) ((Math.random() * 26) + 65);
			            filename += ch;
			          }
				 
				 filename += ".jpg";
				 
				 int filesize = (int)(Math.random()*999999 + 1);
				 
				 String[] fileaddressSample = 
			         {"http://cfile27.uf.tistory.com/image/19577E4B50AA17C8138ECB"
			         ,"http://ph.sisain.co.kr/news/photo/201509/24394_47673_4622.jpg"
			         ,"http://si.wsj.net/public/resources/images/OB-XS830_hodctm_H_20130605161334.jpg"
			         ,"https://www.google.co.kr/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwj8vNmE7_PSAhXMVrwKHUhVD8wQjRwIBw&url=http%3A%2F%2Fwww.thebloger.kr%2Fgo%2F16433&psig=AFQjCNH8BRjuvvY7UddLSmpEE_YqV4ogLw&ust=1490607294311070"
			         ,"http://cfs10.blog.daum.net/image/33/blog/2007/11/12/13/10/4737d2280b26d&filename=%EC%95%84%EB%A6%84%EB%8B%A4%EC%9A%B4%EC%A7%912.jpg"
			         ,"http://www.besthm.com/files/attach/images/100/1029/hr1774814-1.jpg"
			         ,"http://cfs11.blog.daum.net/image/28/blog/2008/11/25/15/17/492b987739e9a&filename=3%EC%9C%84%EB%A5%BC%EC%B0%A8%EC%A7%80%ED%95%9C%EB%AF%B8%EA%B5%AD%EB%84%A4%EB%B0%94%EB%8B%A4%EC%A3%BC%ED%83%80%ED%98%B8.jpg"
			         ,"http://i.huffpost.com/gen/2317982/thumbs/o-2BY4-570.jpg?6"
			         ,"http://file.news.joinsland.com/2014/08/23/thumb(550)13353171d5314.jpg"
			         ,"http://cfile5.uf.tistory.com/image/2525213B5668FE9D310EED"
			         ,"http://image.chosun.com/sitedata/image/201702/16/2017021603295_0.jpg"
			         ,"http://cfile3.uf.tistory.com/image/214B254152D8F9FF1B648F"
			         ,"http://si.wsj.net/public/resources/images/OB-WV032_hodBli_H_20130325142202.jpg"
			         ,"http://image.elle.co.kr/upload/NEWS/2014/09/ncd_140919004/thumb/namo/e7.jpg"
			         };
			      
			      int f = (int)(Math.random()*14);
			      
			      String fileaddress = fileaddressSample[f];
			      
			      String filelink = fileaddressSample[f];
			      
			      
			      String id="";
			      
			      for (int i = 1; i <= 5; i++) {
			            char ch = (char) ((Math.random() * 26) + 65);
			            id += ch;
			          }
			      
			      
			      int hostingnum = (int)(Math.random()*150+1);
			      
			      
			      map.put("type", type);
			      map.put("filename", filename);
			      map.put("filesize", filesize);
			      map.put("fileaddress", fileaddress);
			      map.put("filelink", filelink);
			      map.put("id", id);
			      map.put("hostingnum", hostingnum);
			      
			      System.out.println(map.toString());
				 
			      int r = sdao.createOne(map);
			      
			      if(r==1){
			    	  System.out.println("등록성공");
			      }else{
			    	  System.out.println("등록실패");
			      }
				 
			}
			
			return 1;
			
		}
}
