package Quest;

public class NumCase {
	int num = 0; //

	public NumCase(int num) {
		super();
		this.num = num;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int sum() {
		int idx = 0;
		for (int i = 1; i <= 10; i++) { // 5g 순환
			for (int j = 1; j <= 10; j++) { // 3g 순환
				for (int k = 1; k <= 10; k++) { // 2g 순환
					int sum = ((2 * i) + (3 * j) + (5 * k));
					if (sum == num) { // num과 일치
						System.out.printf("%d, %d, %d\n", i, j, k);
						idx++;
					}
				}
			}
		}
		System.out.println(idx);
		return idx;
	}

}