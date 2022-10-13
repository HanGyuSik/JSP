package common;					//기본 패키지 이외의 패키지 멤버변수 (규약1번)

public class Person {
	private String name;		//private 멤버변수 (규약2번)
	private int age;			//private 멤버변수 (규약2번)
	
	public Person(String name, int age) {		// 기본 생성자 (규약3번)
		super();
		this.name = name;
		this.age = age;
	}

	// public 게터 / 세터 메서드들(규약4, 5번)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
