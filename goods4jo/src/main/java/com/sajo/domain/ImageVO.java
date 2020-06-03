package com.sajo.domain;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

//이미지(Image table)VO
//멤버 변수는 private 데이터type 변수명; 로 설정
public class ImageVO {
	
	//파일 경로  (수정주의 사항 경로 입력후 맨뒤에 \\를 붙인다!)
		private String route="C:\\Users\\KOSMO_13\\git\\teamProjectOf4jo\\goods4jo\\src\\main\\webapp\\resources\\upload\\"; //getter setter 없음
	

	private int imageno;
	private String gid;
	private String fname1;
	private String fname2;
	private String fname3;
	private String fname4;
	private String fname5;
	private long fsize1;
	private long fsize2;
	private long fsize3;
	private long fsize4;
	private long fsize5;
	private String source1;
	private String source2;
	private String source3;
	private String source4;
	private String source5;
	
	
	
	
	public int getImageno() {
		return imageno;
	}
	public void setImageno(int imageno) {
		this.imageno = imageno;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public String getFname1() {
		return fname1;
	}
	public void setFname1(String fname1) {
		this.fname1 = fname1;
	}
	public String getFname2() {
		return fname2;
	}
	public void setFname2(String fname2) {
		this.fname2 = fname2;
	}
	public String getFname3() {
		return fname3;
	}
	public void setFname3(String fname3) {
		this.fname3 = fname3;
	}
	public String getFname4() {
		return fname4;
	}
	public void setFname4(String fname4) {
		this.fname4 = fname4;
	}
	public String getFname5() {
		return fname5;
	}
	public void setFname5(String fname5) {
		this.fname5 = fname5;
	}
	public long getFsize1() {
		return fsize1;
	}
	public void setFsize1(long fsize1) {
		this.fsize1 = fsize1;
	}
	public long getFsize2() {
		return fsize2;
	}
	public void setFsize2(long fsize2) {
		this.fsize2 = fsize2;
	}
	public long getFsize3() {
		return fsize3;
	}
	public void setFsize3(long fsize3) {
		this.fsize3 = fsize3;
	}
	public long getFsize4() {
		return fsize4;
	}
	public void setFsize4(long fsize4) {
		this.fsize4 = fsize4;
	}
	public long getFsize5() {
		return fsize5;
	}
	public void setFsize5(long fsize5) {
		this.fsize5 = fsize5;
	}
	public String getSource1() {
		return source1;
	}
	public void setSource1(String source1) {
		this.source1 = source1;
	}
	public String getSource2() {
		return source2;
	}
	public void setSource2(String source2) {
		this.source2 = source2;
	}
	public String getSource3() {
		return source3;
	}
	public void setSource3(String source3) {
		this.source3 = source3;
	}
	public String getSource4() {
		return source4;
	}
	public void setSource4(String source4) {
		this.source4 = source4;
	}
	public String getSource5() {
		return source5;
	}
	public void setSource5(String source5) {
		this.source5 = source5;
	}
	MultipartFile file1;
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		 if(!file1.isEmpty()) {
				//MultipartFile에서 파일명과 크기만 얻어오기->DB에 입력하기위해
				this.fname1=file1.getOriginalFilename();
				this.fsize1=file1.getSize();
				
				//실제파일로 저장하기//내가지정한 파일로 파일 지정해줘
				File f1= new File(route + fname1); //파일 객체 필요"실제 서버 경로"
				//webapp 안에 풀더를 만들어야한다. 접근할 수있어야하니깐
				//실제 파일 업로드 할 풀더를 "" 안에 입력 +f_name
				//파일 명까지 갈려면 풀더와 f_name 사이에 \\가 필요하다 즉 "경로\\"+f_name
				try {
					file1.transferTo(f1);
				} catch (Exception e) {
					System.out.println("파일1 전송 실패: +e.getMessage");
					e.printStackTrace();
				} 
				
			}
		this.file1 = file1;
	}
	
	MultipartFile file2;
	public MultipartFile getFile2() {
		return file2;
	}
	public void setFile2(MultipartFile file2) {
		 if(!file2.isEmpty()) {
				//MultipartFile에서 파일명과 크기만 얻어오기->DB에 입력하기위해
				this.fname2=file2.getOriginalFilename();
				this.fsize2=file2.getSize();
				
				//실제파일로 저장하기//내가지정한 파일로 파일 지정해줘
				File f2= new File(route + fname2); //파일 객체 필요"실제 서버 경로"
				//webapp 안에 풀더를 만들어야한다. 접근할 수있어야하니깐
				//실제 파일 업로드 할 풀더를 "" 안에 입력 +f_name
				//파일 명까지 갈려면 풀더와 f_name 사이에 \\가 필요하다 즉 "경로\\"+f_name
				try {
					file2.transferTo(f2);
				} catch (Exception e) {
					System.out.println("파일2 전송 실패: +e.getMessage");
					e.printStackTrace();
				} 
				
			}
		this.file2 = file2;
	}
	MultipartFile file3;
	public MultipartFile getFile3() {
		return file3;
	}
	public void setFile3(MultipartFile file3) {
		 if(!file3.isEmpty()) {
				//MultipartFile에서 파일명과 크기만 얻어오기->DB에 입력하기위해
				this.fname3=file3.getOriginalFilename();
				this.fsize3=file3.getSize();
				
				//실제파일로 저장하기//내가지정한 파일로 파일 지정해줘
				File f3= new File(route + fname3); //파일 객체 필요"실제 서버 경로"
				//webapp 안에 풀더를 만들어야한다. 접근할 수있어야하니깐
				//실제 파일 업로드 할 풀더를 "" 안에 입력 +f_name
				//파일 명까지 갈려면 풀더와 f_name 사이에 \\가 필요하다 즉 "경로\\"+f_name
				try {
					file3.transferTo(f3);
				} catch (Exception e) {
					System.out.println("파일1 전송 실패: +e.getMessage");
					e.printStackTrace();
				} 
				
			}
		this.file3 = file3;
	}
	MultipartFile file4;
	public MultipartFile getFile4() {
		return file4;
	}
	public void setFile4(MultipartFile file4) {
		 if(!file1.isEmpty()) {
				//MultipartFile에서 파일명과 크기만 얻어오기->DB에 입력하기위해
				this.fname4=file4.getOriginalFilename();
				this.fsize4=file4.getSize();
				
				//실제파일로 저장하기//내가지정한 파일로 파일 지정해줘
				File f4= new File(route + fname4); //파일 객체 필요"실제 서버 경로"
				//webapp 안에 풀더를 만들어야한다. 접근할 수있어야하니깐
				//실제 파일 업로드 할 풀더를 "" 안에 입력 +f_name
				//파일 명까지 갈려면 풀더와 f_name 사이에 \\가 필요하다 즉 "경로\\"+f_name
				try {
					file4.transferTo(f4);
				} catch (Exception e) {
					System.out.println("파일4 전송 실패: +e.getMessage");
					e.printStackTrace();
				} 
				
			}
		this.file4 = file4;
	}
	MultipartFile file5;
	public MultipartFile getFile5() {
		return file5;
	}
	public void setFile5(MultipartFile file5) {
		 if(!file5.isEmpty()) {
				//MultipartFile에서 파일명과 크기만 얻어오기->DB에 입력하기위해
				this.fname5=file5.getOriginalFilename();
				this.fsize5=file5.getSize();
				
				//실제파일로 저장하기//내가지정한 파일로 파일 지정해줘
				File f5= new File(route + fname5); //파일 객체 필요"실제 서버 경로"
				//webapp 안에 풀더를 만들어야한다. 접근할 수있어야하니깐
				//실제 파일 업로드 할 풀더를 "" 안에 입력 +f_name
				//파일 명까지 갈려면 풀더와 f_name 사이에 \\가 필요하다 즉 "경로\\"+f_name
				try {
					file5.transferTo(f5);
				} catch (Exception e) {
					System.out.println("파일5 전송 실패: +e.getMessage");
					e.printStackTrace();
				} 
				
			}
		this.file5 = file5;
	}

	
}
